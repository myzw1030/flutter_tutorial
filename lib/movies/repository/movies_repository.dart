import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/api/env/env.dart';
import 'package:flutter_tutorial/movies/api/tmdb_api_client.dart';
import 'package:flutter_tutorial/movies/model/movie_detail_data/movie_detail_data.dart';
import 'package:flutter_tutorial/movies/model/movies_search_data/movies_search_data.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioProvider = Provider<Dio>((_) {
  return Dio()
    // ログ表示
    ..interceptors.add(PrettyDioLogger())
    // リクエスト送信時にapi_key設定
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.queryParameters['api_key'] = Env.key;
          return handler.next(options);
        },
      ),
    );
});

final tmdbApiClientProvider = Provider((ref) {
  final dio = ref.watch(dioProvider);
  return TmdbApiClient(dio);
});

final tmdbRepositoryProvider = Provider<MoviesRepository>((ref) {
  final apiClient = ref.watch(tmdbApiClientProvider);
  return MoviesRepository(apiClient);
});

// 映画データ取得
class MoviesRepository {
  MoviesRepository(this.tmdbApiClient);
  final TmdbApiClient tmdbApiClient;

  // 検索時の映画一覧
  Future<MoviesSearchData> fetchSearchMoviesItems(
    String searchQuery, {
    int page = 1,
  }) async {
    return tmdbApiClient.fetchSearchMoviesItems(searchQuery, page: page);
  }

  // 人気映画の一覧
  Future<MoviesSearchData> fetchPopularMoviesItems({
    int page = 1,
  }) async {
    return tmdbApiClient.fetchPopularMoviesItems(page: page);
  }

  //映画詳細
  Future<MovieDetailData> fetchMovieDetail(int movieId) async {
    return tmdbApiClient.fetchMovieDetail(movieId);
  }
}
