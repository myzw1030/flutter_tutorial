// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QiitaItemImpl _$$QiitaItemImplFromJson(Map<String, dynamic> json) =>
    _$QiitaItemImpl(
      title: json['title'] as String?,
      user: json['user'] == null
          ? null
          : QiitaUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QiitaItemImplToJson(_$QiitaItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'user': instance.user,
    };
