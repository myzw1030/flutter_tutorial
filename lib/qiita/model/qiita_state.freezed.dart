// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qiita_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QiitaState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReadyData => throw _privateConstructorUsedError;
  List<QiitaItem> get qiitaItems => throw _privateConstructorUsedError;
  String get currentTag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QiitaStateCopyWith<QiitaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaStateCopyWith<$Res> {
  factory $QiitaStateCopyWith(
          QiitaState value, $Res Function(QiitaState) then) =
      _$QiitaStateCopyWithImpl<$Res, QiitaState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isReadyData,
      List<QiitaItem> qiitaItems,
      String currentTag});
}

/// @nodoc
class _$QiitaStateCopyWithImpl<$Res, $Val extends QiitaState>
    implements $QiitaStateCopyWith<$Res> {
  _$QiitaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isReadyData = null,
    Object? qiitaItems = null,
    Object? currentTag = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: null == isReadyData
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      qiitaItems: null == qiitaItems
          ? _value.qiitaItems
          : qiitaItems // ignore: cast_nullable_to_non_nullable
              as List<QiitaItem>,
      currentTag: null == currentTag
          ? _value.currentTag
          : currentTag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QiitaStateImplCopyWith<$Res>
    implements $QiitaStateCopyWith<$Res> {
  factory _$$QiitaStateImplCopyWith(
          _$QiitaStateImpl value, $Res Function(_$QiitaStateImpl) then) =
      __$$QiitaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isReadyData,
      List<QiitaItem> qiitaItems,
      String currentTag});
}

/// @nodoc
class __$$QiitaStateImplCopyWithImpl<$Res>
    extends _$QiitaStateCopyWithImpl<$Res, _$QiitaStateImpl>
    implements _$$QiitaStateImplCopyWith<$Res> {
  __$$QiitaStateImplCopyWithImpl(
      _$QiitaStateImpl _value, $Res Function(_$QiitaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isReadyData = null,
    Object? qiitaItems = null,
    Object? currentTag = null,
  }) {
    return _then(_$QiitaStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: null == isReadyData
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      qiitaItems: null == qiitaItems
          ? _value._qiitaItems
          : qiitaItems // ignore: cast_nullable_to_non_nullable
              as List<QiitaItem>,
      currentTag: null == currentTag
          ? _value.currentTag
          : currentTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QiitaStateImpl implements _QiitaState {
  const _$QiitaStateImpl(
      {this.isLoading = false,
      this.isReadyData = false,
      final List<QiitaItem> qiitaItems = const <QiitaItem>[],
      this.currentTag = ''})
      : _qiitaItems = qiitaItems;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isReadyData;
  final List<QiitaItem> _qiitaItems;
  @override
  @JsonKey()
  List<QiitaItem> get qiitaItems {
    if (_qiitaItems is EqualUnmodifiableListView) return _qiitaItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_qiitaItems);
  }

  @override
  @JsonKey()
  final String currentTag;

  @override
  String toString() {
    return 'QiitaState(isLoading: $isLoading, isReadyData: $isReadyData, qiitaItems: $qiitaItems, currentTag: $currentTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QiitaStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isReadyData, isReadyData) ||
                other.isReadyData == isReadyData) &&
            const DeepCollectionEquality()
                .equals(other._qiitaItems, _qiitaItems) &&
            (identical(other.currentTag, currentTag) ||
                other.currentTag == currentTag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isReadyData,
      const DeepCollectionEquality().hash(_qiitaItems), currentTag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QiitaStateImplCopyWith<_$QiitaStateImpl> get copyWith =>
      __$$QiitaStateImplCopyWithImpl<_$QiitaStateImpl>(this, _$identity);
}

abstract class _QiitaState implements QiitaState {
  const factory _QiitaState(
      {final bool isLoading,
      final bool isReadyData,
      final List<QiitaItem> qiitaItems,
      final String currentTag}) = _$QiitaStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<QiitaItem> get qiitaItems;
  @override
  String get currentTag;
  @override
  @JsonKey(ignore: true)
  _$$QiitaStateImplCopyWith<_$QiitaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QiitaItem _$QiitaItemFromJson(Map<String, dynamic> json) {
  return _QiitaItem.fromJson(json);
}

/// @nodoc
mixin _$QiitaItem {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'url') String? url,
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
    Object? url = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'url') String? url,
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
    Object? url = freezed,
    Object? user = freezed,
  }) {
    return _then(_$QiitaItemImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'user') this.user});

  factory _$QiitaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$QiitaItemImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'user')
  final QiitaUser? user;

  @override
  String toString() {
    return 'QiitaItem(title: $title, url: $url, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QiitaItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, url, user);

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
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'user') final QiitaUser? user}) = _$QiitaItemImpl;

  factory _QiitaItem.fromJson(Map<String, dynamic> json) =
      _$QiitaItemImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'user')
  QiitaUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$QiitaItemImplCopyWith<_$QiitaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QiitaUser _$QiitaUserFromJson(Map<String, dynamic> json) {
  return _QiitaUser.fromJson(json);
}

/// @nodoc
mixin _$QiitaUser {
  @JsonKey(name: 'profile_image_url')
  String? get profile_image_url => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'profile_image_url') String? profile_image_url});
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
    Object? profile_image_url = freezed,
  }) {
    return _then(_value.copyWith(
      profile_image_url: freezed == profile_image_url
          ? _value.profile_image_url
          : profile_image_url // ignore: cast_nullable_to_non_nullable
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
  $Res call({@JsonKey(name: 'profile_image_url') String? profile_image_url});
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
    Object? profile_image_url = freezed,
  }) {
    return _then(_$QiitaUserImpl(
      profile_image_url: freezed == profile_image_url
          ? _value.profile_image_url
          : profile_image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QiitaUserImpl implements _QiitaUser {
  const _$QiitaUserImpl(
      {@JsonKey(name: 'profile_image_url') this.profile_image_url});

  factory _$QiitaUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$QiitaUserImplFromJson(json);

  @override
  @JsonKey(name: 'profile_image_url')
  final String? profile_image_url;

  @override
  String toString() {
    return 'QiitaUser(profile_image_url: $profile_image_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QiitaUserImpl &&
            (identical(other.profile_image_url, profile_image_url) ||
                other.profile_image_url == profile_image_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, profile_image_url);

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
      {@JsonKey(name: 'profile_image_url')
      final String? profile_image_url}) = _$QiitaUserImpl;

  factory _QiitaUser.fromJson(Map<String, dynamic> json) =
      _$QiitaUserImpl.fromJson;

  @override
  @JsonKey(name: 'profile_image_url')
  String? get profile_image_url;
  @override
  @JsonKey(ignore: true)
  _$$QiitaUserImplCopyWith<_$QiitaUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
