import 'package:flutter_tutorial/movies/model/movies_search_data/movies_search_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_page_state.freezed.dart';

@freezed
class MoviesPageState with _$MoviesPageState {
  const factory MoviesPageState({
    // 検索時のローディング
    @Default(false) bool isSearchLoading,
    // 無限スクロール時のローディング
    @Default(false) bool isMoreLoading,
    // 人気映画のフラグ
    @Default(false) bool isPopular,
    @Default(1) int page,
    @Default(MoviesSearchData()) MoviesSearchData movies,
    @Default('') String searchQuery,
    @Default(1) int totalPages,
  }) = _MoviesPageState;
}
