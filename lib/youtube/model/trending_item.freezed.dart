// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrendingItem _$TrendingItemFromJson(Map<String, dynamic> json) {
  return _TrendingItem.fromJson(json);
}

/// @nodoc
mixin _$TrendingItem {
  String get imagePath => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get channelName => throw _privateConstructorUsedError;
  int get numOfViews => throw _privateConstructorUsedError;
  int get daysAgo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingItemCopyWith<TrendingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingItemCopyWith<$Res> {
  factory $TrendingItemCopyWith(
          TrendingItem value, $Res Function(TrendingItem) then) =
      _$TrendingItemCopyWithImpl<$Res, TrendingItem>;
  @useResult
  $Res call(
      {String imagePath,
      String iconPath,
      String title,
      String channelName,
      int numOfViews,
      int daysAgo});
}

/// @nodoc
class _$TrendingItemCopyWithImpl<$Res, $Val extends TrendingItem>
    implements $TrendingItemCopyWith<$Res> {
  _$TrendingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? iconPath = null,
    Object? title = null,
    Object? channelName = null,
    Object? numOfViews = null,
    Object? daysAgo = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      numOfViews: null == numOfViews
          ? _value.numOfViews
          : numOfViews // ignore: cast_nullable_to_non_nullable
              as int,
      daysAgo: null == daysAgo
          ? _value.daysAgo
          : daysAgo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingItemImplCopyWith<$Res>
    implements $TrendingItemCopyWith<$Res> {
  factory _$$TrendingItemImplCopyWith(
          _$TrendingItemImpl value, $Res Function(_$TrendingItemImpl) then) =
      __$$TrendingItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imagePath,
      String iconPath,
      String title,
      String channelName,
      int numOfViews,
      int daysAgo});
}

/// @nodoc
class __$$TrendingItemImplCopyWithImpl<$Res>
    extends _$TrendingItemCopyWithImpl<$Res, _$TrendingItemImpl>
    implements _$$TrendingItemImplCopyWith<$Res> {
  __$$TrendingItemImplCopyWithImpl(
      _$TrendingItemImpl _value, $Res Function(_$TrendingItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? iconPath = null,
    Object? title = null,
    Object? channelName = null,
    Object? numOfViews = null,
    Object? daysAgo = null,
  }) {
    return _then(_$TrendingItemImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      numOfViews: null == numOfViews
          ? _value.numOfViews
          : numOfViews // ignore: cast_nullable_to_non_nullable
              as int,
      daysAgo: null == daysAgo
          ? _value.daysAgo
          : daysAgo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingItemImpl implements _TrendingItem {
  const _$TrendingItemImpl(
      {this.imagePath = '',
      this.iconPath = '',
      this.title = '',
      this.channelName = '',
      this.numOfViews = 0,
      this.daysAgo = 0});

  factory _$TrendingItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingItemImplFromJson(json);

  @override
  @JsonKey()
  final String imagePath;
  @override
  @JsonKey()
  final String iconPath;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String channelName;
  @override
  @JsonKey()
  final int numOfViews;
  @override
  @JsonKey()
  final int daysAgo;

  @override
  String toString() {
    return 'TrendingItem(imagePath: $imagePath, iconPath: $iconPath, title: $title, channelName: $channelName, numOfViews: $numOfViews, daysAgo: $daysAgo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingItemImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.numOfViews, numOfViews) ||
                other.numOfViews == numOfViews) &&
            (identical(other.daysAgo, daysAgo) || other.daysAgo == daysAgo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, iconPath, title,
      channelName, numOfViews, daysAgo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingItemImplCopyWith<_$TrendingItemImpl> get copyWith =>
      __$$TrendingItemImplCopyWithImpl<_$TrendingItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingItemImplToJson(
      this,
    );
  }
}

abstract class _TrendingItem implements TrendingItem {
  const factory _TrendingItem(
      {final String imagePath,
      final String iconPath,
      final String title,
      final String channelName,
      final int numOfViews,
      final int daysAgo}) = _$TrendingItemImpl;

  factory _TrendingItem.fromJson(Map<String, dynamic> json) =
      _$TrendingItemImpl.fromJson;

  @override
  String get imagePath;
  @override
  String get iconPath;
  @override
  String get title;
  @override
  String get channelName;
  @override
  int get numOfViews;
  @override
  int get daysAgo;
  @override
  @JsonKey(ignore: true)
  _$$TrendingItemImplCopyWith<_$TrendingItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
