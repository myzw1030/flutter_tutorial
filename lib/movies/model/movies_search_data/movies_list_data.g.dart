// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesListDataImpl _$$MoviesListDataImplFromJson(Map<String, dynamic> json) =>
    _$MoviesListDataImpl(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$MoviesListDataImplToJson(
        _$MoviesListDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
