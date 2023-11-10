// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QiitaItemImpl _$$QiitaItemImplFromJson(Map<String, dynamic> json) =>
    _$QiitaItemImpl(
      title: json['title'] as String?,
      url: json['url'] as String?,
      user: json['user'] == null
          ? null
          : QiitaUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QiitaItemImplToJson(_$QiitaItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'user': instance.user,
    };

_$QiitaUserImpl _$$QiitaUserImplFromJson(Map<String, dynamic> json) =>
    _$QiitaUserImpl(
      profileImageUrl: json['profile_image_url'] as String?,
    );

Map<String, dynamic> _$$QiitaUserImplToJson(_$QiitaUserImpl instance) =>
    <String, dynamic>{
      'profile_image_url': instance.profileImageUrl,
    };
