// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListingItem _$ListingItemFromJson(Map<String, dynamic> json) {
  return _ListingItem.fromJson(json);
}

/// @nodoc
mixin _$ListingItem {
  @JsonKey(name: 'imagePath')
  String? get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'userCount')
  int? get userCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingItemCopyWith<ListingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingItemCopyWith<$Res> {
  factory $ListingItemCopyWith(
          ListingItem value, $Res Function(ListingItem) then) =
      _$ListingItemCopyWithImpl<$Res, ListingItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'imagePath') String? imagePath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'userCount') int? userCount});
}

/// @nodoc
class _$ListingItemCopyWithImpl<$Res, $Val extends ListingItem>
    implements $ListingItemCopyWith<$Res> {
  _$ListingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? userCount = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      userCount: freezed == userCount
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListingItemImplCopyWith<$Res>
    implements $ListingItemCopyWith<$Res> {
  factory _$$ListingItemImplCopyWith(
          _$ListingItemImpl value, $Res Function(_$ListingItemImpl) then) =
      __$$ListingItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'imagePath') String? imagePath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'userCount') int? userCount});
}

/// @nodoc
class __$$ListingItemImplCopyWithImpl<$Res>
    extends _$ListingItemCopyWithImpl<$Res, _$ListingItemImpl>
    implements _$$ListingItemImplCopyWith<$Res> {
  __$$ListingItemImplCopyWithImpl(
      _$ListingItemImpl _value, $Res Function(_$ListingItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? userCount = freezed,
  }) {
    return _then(_$ListingItemImpl(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      userCount: freezed == userCount
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListingItemImpl implements _ListingItem {
  const _$ListingItemImpl(
      {@JsonKey(name: 'imagePath') this.imagePath,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'userCount') this.userCount});

  factory _$ListingItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListingItemImplFromJson(json);

  @override
  @JsonKey(name: 'imagePath')
  final String? imagePath;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'userCount')
  final int? userCount;

  @override
  String toString() {
    return 'ListingItem(imagePath: $imagePath, title: $title, price: $price, userCount: $userCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingItemImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.userCount, userCount) ||
                other.userCount == userCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imagePath, title, price, userCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingItemImplCopyWith<_$ListingItemImpl> get copyWith =>
      __$$ListingItemImplCopyWithImpl<_$ListingItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListingItemImplToJson(
      this,
    );
  }
}

abstract class _ListingItem implements ListingItem {
  const factory _ListingItem(
      {@JsonKey(name: 'imagePath') final String? imagePath,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'price') final int? price,
      @JsonKey(name: 'userCount') final int? userCount}) = _$ListingItemImpl;

  factory _ListingItem.fromJson(Map<String, dynamic> json) =
      _$ListingItemImpl.fromJson;

  @override
  @JsonKey(name: 'imagePath')
  String? get imagePath;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'userCount')
  int? get userCount;
  @override
  @JsonKey(ignore: true)
  _$$ListingItemImplCopyWith<_$ListingItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
