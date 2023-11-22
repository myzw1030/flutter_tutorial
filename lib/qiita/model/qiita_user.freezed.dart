// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qiita_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QiitaUser _$QiitaUserFromJson(Map<String, dynamic> json) {
  return _QiitaUser.fromJson(json);
}

/// @nodoc
mixin _$QiitaUser {
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QiitaUserCopyWith<QiitaUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaUserCopyWith<$Res> {
  factory $QiitaUserCopyWith(QiitaUser value, $Res Function(QiitaUser) then) =
      _$QiitaUserCopyWithImpl<$Res, QiitaUser>;
  @useResult
  $Res call({@JsonKey(name: 'profile_image_url') String? profileImageUrl});
}

/// @nodoc
class _$QiitaUserCopyWithImpl<$Res, $Val extends QiitaUser>
    implements $QiitaUserCopyWith<$Res> {
  _$QiitaUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QiitaUserImplCopyWith<$Res>
    implements $QiitaUserCopyWith<$Res> {
  factory _$$QiitaUserImplCopyWith(
          _$QiitaUserImpl value, $Res Function(_$QiitaUserImpl) then) =
      __$$QiitaUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'profile_image_url') String? profileImageUrl});
}

/// @nodoc
class __$$QiitaUserImplCopyWithImpl<$Res>
    extends _$QiitaUserCopyWithImpl<$Res, _$QiitaUserImpl>
    implements _$$QiitaUserImplCopyWith<$Res> {
  __$$QiitaUserImplCopyWithImpl(
      _$QiitaUserImpl _value, $Res Function(_$QiitaUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileImageUrl = freezed,
  }) {
    return _then(_$QiitaUserImpl(
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QiitaUserImpl implements _QiitaUser {
  const _$QiitaUserImpl(
      {@JsonKey(name: 'profile_image_url') this.profileImageUrl});

  factory _$QiitaUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$QiitaUserImplFromJson(json);

  @override
  @JsonKey(name: 'profile_image_url')
  final String? profileImageUrl;

  @override
  String toString() {
    return 'QiitaUser(profileImageUrl: $profileImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QiitaUserImpl &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, profileImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QiitaUserImplCopyWith<_$QiitaUserImpl> get copyWith =>
      __$$QiitaUserImplCopyWithImpl<_$QiitaUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QiitaUserImplToJson(
      this,
    );
  }
}

abstract class _QiitaUser implements QiitaUser {
  const factory _QiitaUser(
          {@JsonKey(name: 'profile_image_url') final String? profileImageUrl}) =
      _$QiitaUserImpl;

  factory _QiitaUser.fromJson(Map<String, dynamic> json) =
      _$QiitaUserImpl.fromJson;

  @override
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$QiitaUserImplCopyWith<_$QiitaUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
