import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/pages/movies_page/state/movies_page_state.dart';
import 'package:flutter_tutorial/movies/repository/movies_repository.dart';

final moviesPageProvider =
    StateNotifierProvider.autoDispose<MoviesPageViewModel, MoviesPageState>(
        (ref) {
  return MoviesPageViewModel(ref);
});

// MoviesPageStateの状態管理
class MoviesPageViewModel extends StateNotifier<MoviesPageState> {
  MoviesPageViewModel(this._ref) : super(const MoviesPageState());
  final Ref _ref;

  // 映画データを取得するためのリポジトリ
  MoviesRepository get _moviesRepository => _ref.read(tmdbRepositoryProvider);

  // 映画一覧を取得し、状態を更新
  Future<void> fetchMoviesItems(String searchQuery) async {
    try {
      state = state.copyWith(isLoading: true);
      final moviesItems = await _moviesRepository.fetchMoviesItems(searchQuery);

      if (!mounted) {
        return;
      }

      state = state.copyWith(
        isLoading: false,
        searchQuery: searchQuery,
        movies: moviesItems,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
      );
      print('MoviesPageViewModelエラー:$e');
    }
  }

  // ユーザーの入力に基づいて検索し結果を表示
  Future<void> searchMovies(String searchQuery) async {
    await fetchMoviesItems(searchQuery);
  }
}
