// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  MoviesSearchData get movies => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesPageStateCopyWith<MoviesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesPageStateCopyWith<$Res> {
  factory $MoviesPageStateCopyWith(
          MoviesPageState value, $Res Function(MoviesPageState) then) =
      _$MoviesPageStateCopyWithImpl<$Res, MoviesPageState>;
  @useResult
  $Res call({bool isLoading, MoviesSearchData movies, String searchQuery});

  $MoviesSearchDataCopyWith<$Res> get movies;
}

/// @nodoc
class _$MoviesPageStateCopyWithImpl<$Res, $Val extends MoviesPageState>
    implements $MoviesPageStateCopyWith<$Res> {
  _$MoviesPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? movies = null,
    Object? searchQuery = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as MoviesSearchData,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoviesSearchDataCopyWith<$Res> get movies {
    return $MoviesSearchDataCopyWith<$Res>(_value.movies, (value) {
      return _then(_value.copyWith(movies: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoviesPageStateImplCopyWith<$Res>
    implements $MoviesPageStateCopyWith<$Res> {
  factory _$$MoviesPageStateImplCopyWith(_$MoviesPageStateImpl value,
          $Res Function(_$MoviesPageStateImpl) then) =
      __$$MoviesPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, MoviesSearchData movies, String searchQuery});

  @override
  $MoviesSearchDataCopyWith<$Res> get movies;
}

/// @nodoc
class __$$MoviesPageStateImplCopyWithImpl<$Res>
    extends _$MoviesPageStateCopyWithImpl<$Res, _$MoviesPageStateImpl>
    implements _$$MoviesPageStateImplCopyWith<$Res> {
  __$$MoviesPageStateImplCopyWithImpl(
      _$MoviesPageStateImpl _value, $Res Function(_$MoviesPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? movies = null,
    Object? searchQuery = null,
  }) {
    return _then(_$MoviesPageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as MoviesSearchData,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MoviesPageStateImpl implements _MoviesPageState {
  const _$MoviesPageStateImpl(
      {this.isLoading = false,
      this.movies = const MoviesSearchData(),
      this.searchQuery = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final MoviesSearchData movies;
  @override
  @JsonKey()
  final String searchQuery;

  @override
  String toString() {
    return 'MoviesPageState(isLoading: $isLoading, movies: $movies, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesPageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.movies, movies) || other.movies == movies) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, movies, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesPageStateImplCopyWith<_$MoviesPageStateImpl> get copyWith =>
      __$$MoviesPageStateImplCopyWithImpl<_$MoviesPageStateImpl>(
          this, _$identity);
}

abstract class _MoviesPageState implements MoviesPageState {
  const factory _MoviesPageState(
      {final bool isLoading,
      final MoviesSearchData movies,
      final String searchQuery}) = _$MoviesPageStateImpl;

  @override
  bool get isLoading;
  @override
  MoviesSearchData get movies;
  @override
  String get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$MoviesPageStateImplCopyWith<_$MoviesPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
