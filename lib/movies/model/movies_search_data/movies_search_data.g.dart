// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_search_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesSearchDataImpl _$$MoviesSearchDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MoviesSearchDataImpl(
      page: json['page'] as int? ?? 1,
      totalPages: json['total_pages'] as int? ?? 1,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => MoviesListData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MoviesListData>[],
    );

Map<String, dynamic> _$$MoviesSearchDataImplToJson(
        _$MoviesSearchDataImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'results': instance.results,
    };
