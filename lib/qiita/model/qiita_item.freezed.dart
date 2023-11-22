// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qiita_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QiitaItem _$QiitaItemFromJson(Map<String, dynamic> json) {
  return _QiitaItem.fromJson(json);
}

/// @nodoc
mixin _$QiitaItem {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  QiitaUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QiitaItemCopyWith<QiitaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaItemCopyWith<$Res> {
  factory $QiitaItemCopyWith(QiitaItem value, $Res Function(QiitaItem) then) =
      _$QiitaItemCopyWithImpl<$Res, QiitaItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'user') QiitaUser? user});

  $QiitaUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$QiitaItemCopyWithImpl<$Res, $Val extends QiitaItem>
    implements $QiitaItemCopyWith<$Res> {
  _$QiitaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as QiitaUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QiitaUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $QiitaUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QiitaItemImplCopyWith<$Res>
    implements $QiitaItemCopyWith<$Res> {
  factory _$$QiitaItemImplCopyWith(
          _$QiitaItemImpl value, $Res Function(_$QiitaItemImpl) then) =
      __$$QiitaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'user') QiitaUser? user});

  @override
  $QiitaUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$QiitaItemImplCopyWithImpl<$Res>
    extends _$QiitaItemCopyWithImpl<$Res, _$QiitaItemImpl>
    implements _$$QiitaItemImplCopyWith<$Res> {
  __$$QiitaItemImplCopyWithImpl(
      _$QiitaItemImpl _value, $Res Function(_$QiitaItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? user = freezed,
  }) {
    return _then(_$QiitaItemImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as QiitaUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QiitaItemImpl implements _QiitaItem {
  const _$QiitaItemImpl(
      {@JsonKey(name: 'title') this.title, @JsonKey(name: 'user') this.user});

  factory _$QiitaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$QiitaItemImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'user')
  final QiitaUser? user;

  @override
  String toString() {
    return 'QiitaItem(title: $title, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QiitaItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QiitaItemImplCopyWith<_$QiitaItemImpl> get copyWith =>
      __$$QiitaItemImplCopyWithImpl<_$QiitaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QiitaItemImplToJson(
      this,
    );
  }
}

abstract class _QiitaItem implements QiitaItem {
  const factory _QiitaItem(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'user') final QiitaUser? user}) = _$QiitaItemImpl;

  factory _QiitaItem.fromJson(Map<String, dynamic> json) =
      _$QiitaItemImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'user')
  QiitaUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$QiitaItemImplCopyWith<_$QiitaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
