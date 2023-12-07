import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/model/movies_search_data/movies_list_data.dart';
import 'package:flutter_tutorial/movies/model/movies_search_data/movies_search_data.dart';
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
  Future<void> fetchSearchMoviesItems(String searchQuery) async {
    state = state.copyWith(isSearchLoading: true);

    final moviesItems =
        await _moviesRepository.fetchSearchMoviesItems(searchQuery);

    if (!mounted) {
      return;
    }

    if (moviesItems.results.isNotEmpty) {
      state = state.copyWith(
        isSearchLoading: false,
        searchQuery: searchQuery,
        movies: moviesItems,
        totalPages: moviesItems.totalPages,
      );
    } else {
      state = state.copyWith(
        isSearchLoading: false,
        movies: moviesItems,
      );
    }
  }

  // 人気映画一覧を取得し、状態を更新
  Future<void> fetchPopularMoviesItems() async {
    state = state.copyWith(
      isSearchLoading: true,
      isPopular: true,
    );

    final moviesItems = await _moviesRepository.fetchPopularMoviesItems();

    if (!mounted) {
      return;
    }

    if (moviesItems.results.isNotEmpty) {
      state = state.copyWith(
        isSearchLoading: false,
        movies: moviesItems,
        totalPages: moviesItems.totalPages,
      );
    } else {
      state = state.copyWith(
        isSearchLoading: false,
        movies: moviesItems,
      );
    }
  }

  // 無限スクロールでの呼び出し処理
  Future<void> fetchMoviesMoreItems() async {
    // 既に読み込み中、state.pageがtotalPages以上の場合は処理を行わない
    if (state.isMoreLoading || state.page >= state.totalPages) {
      return;
    }
    state = state.copyWith(isMoreLoading: true);
    // 次のページへ
    final nextPage = state.page + 1;
    MoviesSearchData moreMoviesItem;
    // アプリ起動時は人気映画一覧を表示するため
    if (state.isPopular) {
      moreMoviesItem = await _moviesRepository.fetchPopularMoviesItems(
        page: nextPage,
      );
    } else {
      moreMoviesItem = await _moviesRepository.fetchSearchMoviesItems(
        state.searchQuery,
        page: nextPage,
      );
    }

    if (!mounted) {
      return;
    }

    if (moreMoviesItem.results.isNotEmpty) {
      // 新しいリストを作成し、そのリストに映画データを追加
      final updatedMoviesList = List<MoviesListData>.from(state.movies.results)
        ..addAll(moreMoviesItem.results);

      state = state.copyWith(
        movies: state.movies.copyWith(results: updatedMoviesList),
        page: nextPage,
        isMoreLoading: false,
      );
    } else {
      state = state.copyWith(isMoreLoading: false);
    }
  }

  // ユーザーの入力に基づいて検索し結果を表示
  Future<void> searchMovies(String searchQuery) async {
    await fetchSearchMoviesItems(searchQuery);
    // 検索時は通常に戻す
    state = state.copyWith(isPopular: false);
  }
}
