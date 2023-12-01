// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  MovieDetailData get movieDetail => throw _privateConstructorUsedError;
  int? get movieId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailPageStateCopyWith<MovieDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailPageStateCopyWith<$Res> {
  factory $MovieDetailPageStateCopyWith(MovieDetailPageState value,
          $Res Function(MovieDetailPageState) then) =
      _$MovieDetailPageStateCopyWithImpl<$Res, MovieDetailPageState>;
  @useResult
  $Res call({bool isLoading, MovieDetailData movieDetail, int? movieId});

  $MovieDetailDataCopyWith<$Res> get movieDetail;
}

/// @nodoc
class _$MovieDetailPageStateCopyWithImpl<$Res,
        $Val extends MovieDetailPageState>
    implements $MovieDetailPageStateCopyWith<$Res> {
  _$MovieDetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? movieDetail = null,
    Object? movieId = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movieDetail: null == movieDetail
          ? _value.movieDetail
          : movieDetail // ignore: cast_nullable_to_non_nullable
              as MovieDetailData,
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieDetailDataCopyWith<$Res> get movieDetail {
    return $MovieDetailDataCopyWith<$Res>(_value.movieDetail, (value) {
      return _then(_value.copyWith(movieDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailPageStateImplCopyWith<$Res>
    implements $MovieDetailPageStateCopyWith<$Res> {
  factory _$$MovieDetailPageStateImplCopyWith(_$MovieDetailPageStateImpl value,
          $Res Function(_$MovieDetailPageStateImpl) then) =
      __$$MovieDetailPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, MovieDetailData movieDetail, int? movieId});

  @override
  $MovieDetailDataCopyWith<$Res> get movieDetail;
}

/// @nodoc
class __$$MovieDetailPageStateImplCopyWithImpl<$Res>
    extends _$MovieDetailPageStateCopyWithImpl<$Res, _$MovieDetailPageStateImpl>
    implements _$$MovieDetailPageStateImplCopyWith<$Res> {
  __$$MovieDetailPageStateImplCopyWithImpl(_$MovieDetailPageStateImpl _value,
      $Res Function(_$MovieDetailPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? movieDetail = null,
    Object? movieId = freezed,
  }) {
    return _then(_$MovieDetailPageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movieDetail: null == movieDetail
          ? _value.movieDetail
          : movieDetail // ignore: cast_nullable_to_non_nullable
              as MovieDetailData,
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$MovieDetailPageStateImpl implements _MovieDetailPageState {
  const _$MovieDetailPageStateImpl(
      {this.isLoading = false,
      this.movieDetail = const MovieDetailData(),
      this.movieId});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final MovieDetailData movieDetail;
  @override
  final int? movieId;

  @override
  String toString() {
    return 'MovieDetailPageState(isLoading: $isLoading, movieDetail: $movieDetail, movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailPageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.movieDetail, movieDetail) ||
                other.movieDetail == movieDetail) &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, movieDetail, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailPageStateImplCopyWith<_$MovieDetailPageStateImpl>
      get copyWith =>
          __$$MovieDetailPageStateImplCopyWithImpl<_$MovieDetailPageStateImpl>(
              this, _$identity);
}

abstract class _MovieDetailPageState implements MovieDetailPageState {
  const factory _MovieDetailPageState(
      {final bool isLoading,
      final MovieDetailData movieDetail,
      final int? movieId}) = _$MovieDetailPageStateImpl;

  @override
  bool get isLoading;
  @override
  MovieDetailData get movieDetail;
  @override
  int? get movieId;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailPageStateImplCopyWith<_$MovieDetailPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
