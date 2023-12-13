import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_list_data.freezed.dart';

part 'movies_list_data.g.dart';

@freezed
class MoviesListData with _$MoviesListData {
  const factory MoviesListData({
    int? id,
    String? title,
    @JsonKey(name: 'poster_path') String? posterPath,
  }) = _MoviesListData;

  factory MoviesListData.fromJson(Map<String, dynamic> json) =>
      _$MoviesListDataFromJson(json);

  // プライベートコンストラクタ
  const MoviesListData._();

  // ゲッターを追加
  String get fullPosterPath => 'https://image.tmdb.org/t/p/w500/$posterPath';
}
