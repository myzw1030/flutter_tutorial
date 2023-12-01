import 'package:flutter_tutorial/movies/model/movie_detail_data/movie_detail_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_page_state.freezed.dart';

@freezed
class MovieDetailPageState with _$MovieDetailPageState {
  const factory MovieDetailPageState({
    @Default(false) bool isLoading,
    @Default(MovieDetailData()) MovieDetailData movieDetail,
    int? movieId,
  }) = _MovieDetailPageState;
}
