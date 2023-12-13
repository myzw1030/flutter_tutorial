import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_data.freezed.dart';

part 'movie_detail_data.g.dart';

@freezed
class MovieDetailData with _$MovieDetailData {
  const factory MovieDetailData({
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    String? title,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    int? runtime,
  }) = _MovieDetailData;

  factory MovieDetailData.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailDataFromJson(json);

  // プライベートコンストラクタ
  const MovieDetailData._();

  // ゲッターを追加
  String get fullBackdropPath =>
      'https://image.tmdb.org/t/p/w500/$backdropPath';
  String get fullPosterPath => 'https://image.tmdb.org/t/p/w500/$posterPath';
}
