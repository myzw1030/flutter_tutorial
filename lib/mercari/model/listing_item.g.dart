// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListingItemImpl _$$ListingItemImplFromJson(Map<String, dynamic> json) =>
    _$ListingItemImpl(
      imagePath: json['imagePath'] as String?,
      title: json['title'] as String?,
      price: json['price'] as int?,
      userCount: json['userCount'] as int?,
    );

Map<String, dynamic> _$$ListingItemImplToJson(_$ListingItemImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'title': instance.title,
      'price': instance.price,
      'userCount': instance.userCount,
    };
