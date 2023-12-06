import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/pages/movie_detail_page/state/movie_detail_page_state.dart';
import 'package:flutter_tutorial/movies/repository/movies_repository.dart';

// 特定の映画IDに基づいて状態を更新
final movieDetailPageProvider = StateNotifierProvider.autoDispose
    .family<MovieDetailPageViewModel, MovieDetailPageState, int>(
        (ref, movieId) {
  return MovieDetailPageViewModel(ref, movieId);
});

// MovieDetailPageStateの状態管理
class MovieDetailPageViewModel extends StateNotifier<MovieDetailPageState> {
  MovieDetailPageViewModel(
    this._ref,
    this.movieId,
  ) : super(const MovieDetailPageState()) {
    fetchMovieDetail(movieId);
  }
  final Ref _ref;
  final int movieId;

  // 映画データを取得するためのリポジトリ
  MoviesRepository get _moviesRepository => _ref.read(tmdbRepositoryProvider);

  // 映画詳細を取得し、状態を更新
  Future<void> fetchMovieDetail(int movieId) async {
    state = state.copyWith(isLoading: true);

    final movieDetail = await _moviesRepository.fetchMovieDetail(movieId);

    if (!mounted) {
      return;
    }
    state = state.copyWith(
      isLoading: false,
      movieDetail: movieDetail,
    );
  }
}
