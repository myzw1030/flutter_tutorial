// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingItemImpl _$$TrendingItemImplFromJson(Map<String, dynamic> json) =>
    _$TrendingItemImpl(
      imagePath: json['imagePath'] as String? ?? '',
      iconPath: json['iconPath'] as String? ?? '',
      title: json['title'] as String? ?? '',
      channelName: json['channelName'] as String? ?? '',
      numOfViews: json['numOfViews'] as int? ?? 0,
      daysAgo: json['daysAgo'] as int? ?? 0,
    );

Map<String, dynamic> _$$TrendingItemImplToJson(_$TrendingItemImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'iconPath': instance.iconPath,
      'title': instance.title,
      'channelName': instance.channelName,
      'numOfViews': instance.numOfViews,
      'daysAgo': instance.daysAgo,
    };
