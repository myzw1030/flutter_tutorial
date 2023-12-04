// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PropertyItem _$PropertyItemFromJson(Map<String, dynamic> json) {
  return _PropertyItem.fromJson(json);
}

/// @nodoc
mixin _$PropertyItem {
  String get imagePath => throw _privateConstructorUsedError;
  String get imagePath2 => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get accessDescription => throw _privateConstructorUsedError;
  String get unitDescription => throw _privateConstructorUsedError;
  String get buildingDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyItemCopyWith<PropertyItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyItemCopyWith<$Res> {
  factory $PropertyItemCopyWith(
          PropertyItem value, $Res Function(PropertyItem) then) =
      _$PropertyItemCopyWithImpl<$Res, PropertyItem>;
  @useResult
  $Res call(
      {String imagePath,
      String imagePath2,
      String title,
      int price,
      String accessDescription,
      String unitDescription,
      String buildingDetails});
}

/// @nodoc
class _$PropertyItemCopyWithImpl<$Res, $Val extends PropertyItem>
    implements $PropertyItemCopyWith<$Res> {
  _$PropertyItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? imagePath2 = null,
    Object? title = null,
    Object? price = null,
    Object? accessDescription = null,
    Object? unitDescription = null,
    Object? buildingDetails = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath2: null == imagePath2
          ? _value.imagePath2
          : imagePath2 // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      accessDescription: null == accessDescription
          ? _value.accessDescription
          : accessDescription // ignore: cast_nullable_to_non_nullable
              as String,
      unitDescription: null == unitDescription
          ? _value.unitDescription
          : unitDescription // ignore: cast_nullable_to_non_nullable
              as String,
      buildingDetails: null == buildingDetails
          ? _value.buildingDetails
          : buildingDetails // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyItemImplCopyWith<$Res>
    implements $PropertyItemCopyWith<$Res> {
  factory _$$PropertyItemImplCopyWith(
          _$PropertyItemImpl value, $Res Function(_$PropertyItemImpl) then) =
      __$$PropertyItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imagePath,
      String imagePath2,
      String title,
      int price,
      String accessDescription,
      String unitDescription,
      String buildingDetails});
}

/// @nodoc
class __$$PropertyItemImplCopyWithImpl<$Res>
    extends _$PropertyItemCopyWithImpl<$Res, _$PropertyItemImpl>
    implements _$$PropertyItemImplCopyWith<$Res> {
  __$$PropertyItemImplCopyWithImpl(
      _$PropertyItemImpl _value, $Res Function(_$PropertyItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? imagePath2 = null,
    Object? title = null,
    Object? price = null,
    Object? accessDescription = null,
    Object? unitDescription = null,
    Object? buildingDetails = null,
  }) {
    return _then(_$PropertyItemImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath2: null == imagePath2
          ? _value.imagePath2
          : imagePath2 // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      accessDescription: null == accessDescription
          ? _value.accessDescription
          : accessDescription // ignore: cast_nullable_to_non_nullable
              as String,
      unitDescription: null == unitDescription
          ? _value.unitDescription
          : unitDescription // ignore: cast_nullable_to_non_nullable
              as String,
      buildingDetails: null == buildingDetails
          ? _value.buildingDetails
          : buildingDetails // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyItemImpl implements _PropertyItem {
  const _$PropertyItemImpl(
      {this.imagePath = '',
      this.imagePath2 = '',
      this.title = '',
      this.price = 0,
      this.accessDescription = '',
      this.unitDescription = '',
      this.buildingDetails = ''});

  factory _$PropertyItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyItemImplFromJson(json);

  @override
  @JsonKey()
  final String imagePath;
  @override
  @JsonKey()
  final String imagePath2;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final String accessDescription;
  @override
  @JsonKey()
  final String unitDescription;
  @override
  @JsonKey()
  final String buildingDetails;

  @override
  String toString() {
    return 'PropertyItem(imagePath: $imagePath, imagePath2: $imagePath2, title: $title, price: $price, accessDescription: $accessDescription, unitDescription: $unitDescription, buildingDetails: $buildingDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyItemImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.imagePath2, imagePath2) ||
                other.imagePath2 == imagePath2) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.accessDescription, accessDescription) ||
                other.accessDescription == accessDescription) &&
            (identical(other.unitDescription, unitDescription) ||
                other.unitDescription == unitDescription) &&
            (identical(other.buildingDetails, buildingDetails) ||
                other.buildingDetails == buildingDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, imagePath2, title,
      price, accessDescription, unitDescription, buildingDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyItemImplCopyWith<_$PropertyItemImpl> get copyWith =>
      __$$PropertyItemImplCopyWithImpl<_$PropertyItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyItemImplToJson(
      this,
    );
  }
}

abstract class _PropertyItem implements PropertyItem {
  const factory _PropertyItem(
      {final String imagePath,
      final String imagePath2,
      final String title,
      final int price,
      final String accessDescription,
      final String unitDescription,
      final String buildingDetails}) = _$PropertyItemImpl;

  factory _PropertyItem.fromJson(Map<String, dynamic> json) =
      _$PropertyItemImpl.fromJson;

  @override
  String get imagePath;
  @override
  String get imagePath2;
  @override
  String get title;
  @override
  int get price;
  @override
  String get accessDescription;
  @override
  String get unitDescription;
  @override
  String get buildingDetails;
  @override
  @JsonKey(ignore: true)
  _$$PropertyItemImplCopyWith<_$PropertyItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
