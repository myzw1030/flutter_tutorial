// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailDataImpl _$$MovieDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailDataImpl(
      backdropPath: json['backdrop_path'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      runtime: json['runtime'] as int?,
    );

Map<String, dynamic> _$$MovieDetailDataImplToJson(
        _$MovieDetailDataImpl instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'runtime': instance.runtime,
    };
