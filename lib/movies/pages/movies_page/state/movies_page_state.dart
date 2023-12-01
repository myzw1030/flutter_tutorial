import 'package:flutter_tutorial/movies/model/movies_search_data/movies_search_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_page_state.freezed.dart';

@freezed
class MoviesPageState with _$MoviesPageState {
  const factory MoviesPageState({
    @Default(false) bool isLoading,
    @Default(MoviesSearchData()) MoviesSearchData movies,
    @Default('') String searchQuery,
  }) = _MoviesPageState;
}
