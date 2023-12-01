import 'package:dio/dio.dart';
import 'package:flutter_tutorial/movies/model/movie_detail_data/movie_detail_data.dart';
import 'package:flutter_tutorial/movies/model/movies_search_data/movies_search_data.dart';
import 'package:retrofit/retrofit.dart';

part 'tmdb_api_client.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3/')
abstract class TmdbApiClient {
  factory TmdbApiClient(Dio dio, {String baseUrl}) = _TmdbApiClient;

  // 映画の一覧情報
  @GET(
    'search/movie?query={searchQuery}&language=ja-JA',
  )
  Future<MoviesSearchData> fetchMoviesItems(
    @Path('searchQuery') String searchQuery,
  );

  // 映画の詳細情報
  @GET('movie/{movieId}?language=ja-JA')
  Future<MovieDetailData> fetchMovieDetail(@Path('movieId') int movieId);
}
