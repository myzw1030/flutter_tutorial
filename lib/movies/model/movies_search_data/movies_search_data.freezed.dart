// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_search_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesSearchData _$MoviesSearchDataFromJson(Map<String, dynamic> json) {
  return _MoviesSearchData.fromJson(json);
}

/// @nodoc
mixin _$MoviesSearchData {
  int get page => throw _privateConstructorUsedError;
  List<MoviesListData> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesSearchDataCopyWith<MoviesSearchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesSearchDataCopyWith<$Res> {
  factory $MoviesSearchDataCopyWith(
          MoviesSearchData value, $Res Function(MoviesSearchData) then) =
      _$MoviesSearchDataCopyWithImpl<$Res, MoviesSearchData>;
  @useResult
  $Res call({int page, List<MoviesListData> results});
}

/// @nodoc
class _$MoviesSearchDataCopyWithImpl<$Res, $Val extends MoviesSearchData>
    implements $MoviesSearchDataCopyWith<$Res> {
  _$MoviesSearchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MoviesListData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesSearchDataImplCopyWith<$Res>
    implements $MoviesSearchDataCopyWith<$Res> {
  factory _$$MoviesSearchDataImplCopyWith(_$MoviesSearchDataImpl value,
          $Res Function(_$MoviesSearchDataImpl) then) =
      __$$MoviesSearchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<MoviesListData> results});
}

/// @nodoc
class __$$MoviesSearchDataImplCopyWithImpl<$Res>
    extends _$MoviesSearchDataCopyWithImpl<$Res, _$MoviesSearchDataImpl>
    implements _$$MoviesSearchDataImplCopyWith<$Res> {
  __$$MoviesSearchDataImplCopyWithImpl(_$MoviesSearchDataImpl _value,
      $Res Function(_$MoviesSearchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$MoviesSearchDataImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MoviesListData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesSearchDataImpl implements _MoviesSearchData {
  const _$MoviesSearchDataImpl(
      {this.page = 1,
      final List<MoviesListData> results = const <MoviesListData>[]})
      : _results = results;

  factory _$MoviesSearchDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesSearchDataImplFromJson(json);

  @override
  @JsonKey()
  final int page;
  final List<MoviesListData> _results;
  @override
  @JsonKey()
  List<MoviesListData> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MoviesSearchData(page: $page, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesSearchDataImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesSearchDataImplCopyWith<_$MoviesSearchDataImpl> get copyWith =>
      __$$MoviesSearchDataImplCopyWithImpl<_$MoviesSearchDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesSearchDataImplToJson(
      this,
    );
  }
}

abstract class _MoviesSearchData implements MoviesSearchData {
  const factory _MoviesSearchData(
      {final int page,
      final List<MoviesListData> results}) = _$MoviesSearchDataImpl;

  factory _MoviesSearchData.fromJson(Map<String, dynamic> json) =
      _$MoviesSearchDataImpl.fromJson;

  @override
  int get page;
  @override
  List<MoviesListData> get results;
  @override
  @JsonKey(ignore: true)
  _$$MoviesSearchDataImplCopyWith<_$MoviesSearchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
