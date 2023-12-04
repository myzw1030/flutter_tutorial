// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyItemImpl _$$PropertyItemImplFromJson(Map<String, dynamic> json) =>
    _$PropertyItemImpl(
      imagePath: json['imagePath'] as String? ?? '',
      imagePath2: json['imagePath2'] as String? ?? '',
      title: json['title'] as String? ?? '',
      price: json['price'] as int? ?? 0,
      accessDescription: json['accessDescription'] as String? ?? '',
      unitDescription: json['unitDescription'] as String? ?? '',
      buildingDetails: json['buildingDetails'] as String? ?? '',
    );

Map<String, dynamic> _$$PropertyItemImplToJson(_$PropertyItemImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'imagePath2': instance.imagePath2,
      'title': instance.title,
      'price': instance.price,
      'accessDescription': instance.accessDescription,
      'unitDescription': instance.unitDescription,
      'buildingDetails': instance.buildingDetails,
    };
