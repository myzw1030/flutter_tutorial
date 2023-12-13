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
// 検索時のローディング
  bool get isSearchLoading =>
      throw _privateConstructorUsedError; // 無限スクロール時のローディング
  bool get isMoreLoading => throw _privateConstructorUsedError; // 人気映画のフラグ
  bool get isPopular => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  MoviesSearchData get movies => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

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
  $Res call(
      {bool isSearchLoading,
      bool isMoreLoading,
      bool isPopular,
      int page,
      MoviesSearchData movies,
      String searchQuery,
      int totalPages});

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
    Object? isSearchLoading = null,
    Object? isMoreLoading = null,
    Object? isPopular = null,
    Object? page = null,
    Object? movies = null,
    Object? searchQuery = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      isSearchLoading: null == isSearchLoading
          ? _value.isSearchLoading
          : isSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPopular: null == isPopular
          ? _value.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as MoviesSearchData,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call(
      {bool isSearchLoading,
      bool isMoreLoading,
      bool isPopular,
      int page,
      MoviesSearchData movies,
      String searchQuery,
      int totalPages});

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
    Object? isSearchLoading = null,
    Object? isMoreLoading = null,
    Object? isPopular = null,
    Object? page = null,
    Object? movies = null,
    Object? searchQuery = null,
    Object? totalPages = null,
  }) {
    return _then(_$MoviesPageStateImpl(
      isSearchLoading: null == isSearchLoading
          ? _value.isSearchLoading
          : isSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPopular: null == isPopular
          ? _value.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as MoviesSearchData,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MoviesPageStateImpl implements _MoviesPageState {
  const _$MoviesPageStateImpl(
      {this.isSearchLoading = false,
      this.isMoreLoading = false,
      this.isPopular = false,
      this.page = 1,
      this.movies = const MoviesSearchData(),
      this.searchQuery = '',
      this.totalPages = 1});

// 検索時のローディング
  @override
  @JsonKey()
  final bool isSearchLoading;
// 無限スクロール時のローディング
  @override
  @JsonKey()
  final bool isMoreLoading;
// 人気映画のフラグ
  @override
  @JsonKey()
  final bool isPopular;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final MoviesSearchData movies;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final int totalPages;

  @override
  String toString() {
    return 'MoviesPageState(isSearchLoading: $isSearchLoading, isMoreLoading: $isMoreLoading, isPopular: $isPopular, page: $page, movies: $movies, searchQuery: $searchQuery, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesPageStateImpl &&
            (identical(other.isSearchLoading, isSearchLoading) ||
                other.isSearchLoading == isSearchLoading) &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                other.isMoreLoading == isMoreLoading) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.movies, movies) || other.movies == movies) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSearchLoading, isMoreLoading,
      isPopular, page, movies, searchQuery, totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesPageStateImplCopyWith<_$MoviesPageStateImpl> get copyWith =>
      __$$MoviesPageStateImplCopyWithImpl<_$MoviesPageStateImpl>(
          this, _$identity);
}

abstract class _MoviesPageState implements MoviesPageState {
  const factory _MoviesPageState(
      {final bool isSearchLoading,
      final bool isMoreLoading,
      final bool isPopular,
      final int page,
      final MoviesSearchData movies,
      final String searchQuery,
      final int totalPages}) = _$MoviesPageStateImpl;

  @override // 検索時のローディング
  bool get isSearchLoading;
  @override // 無限スクロール時のローディング
  bool get isMoreLoading;
  @override // 人気映画のフラグ
  bool get isPopular;
  @override
  int get page;
  @override
  MoviesSearchData get movies;
  @override
  String get searchQuery;
  @override
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$MoviesPageStateImplCopyWith<_$MoviesPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
