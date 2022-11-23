// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialSearch,
    required TResult Function(String searchValue) searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialSearch,
    TResult? Function(String searchValue)? searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialSearch,
    TResult Function(String searchValue)? searchStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSearch value) initialSearch,
    required TResult Function(SearchStudent value) searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSearch value)? initialSearch,
    TResult? Function(SearchStudent value)? searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSearch value)? initialSearch,
    TResult Function(SearchStudent value)? searchStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenEventCopyWith<$Res> {
  factory $SearchScreenEventCopyWith(
          SearchScreenEvent value, $Res Function(SearchScreenEvent) then) =
      _$SearchScreenEventCopyWithImpl<$Res, SearchScreenEvent>;
}

/// @nodoc
class _$SearchScreenEventCopyWithImpl<$Res, $Val extends SearchScreenEvent>
    implements $SearchScreenEventCopyWith<$Res> {
  _$SearchScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSearchCopyWith<$Res> {
  factory _$$InitialSearchCopyWith(
          _$InitialSearch value, $Res Function(_$InitialSearch) then) =
      __$$InitialSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSearchCopyWithImpl<$Res>
    extends _$SearchScreenEventCopyWithImpl<$Res, _$InitialSearch>
    implements _$$InitialSearchCopyWith<$Res> {
  __$$InitialSearchCopyWithImpl(
      _$InitialSearch _value, $Res Function(_$InitialSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSearch implements InitialSearch {
  const _$InitialSearch();

  @override
  String toString() {
    return 'SearchScreenEvent.initialSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialSearch,
    required TResult Function(String searchValue) searchStudent,
  }) {
    return initialSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialSearch,
    TResult? Function(String searchValue)? searchStudent,
  }) {
    return initialSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialSearch,
    TResult Function(String searchValue)? searchStudent,
    required TResult orElse(),
  }) {
    if (initialSearch != null) {
      return initialSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSearch value) initialSearch,
    required TResult Function(SearchStudent value) searchStudent,
  }) {
    return initialSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSearch value)? initialSearch,
    TResult? Function(SearchStudent value)? searchStudent,
  }) {
    return initialSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSearch value)? initialSearch,
    TResult Function(SearchStudent value)? searchStudent,
    required TResult orElse(),
  }) {
    if (initialSearch != null) {
      return initialSearch(this);
    }
    return orElse();
  }
}

abstract class InitialSearch implements SearchScreenEvent {
  const factory InitialSearch() = _$InitialSearch;
}

/// @nodoc
abstract class _$$SearchStudentCopyWith<$Res> {
  factory _$$SearchStudentCopyWith(
          _$SearchStudent value, $Res Function(_$SearchStudent) then) =
      __$$SearchStudentCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchValue});
}

/// @nodoc
class __$$SearchStudentCopyWithImpl<$Res>
    extends _$SearchScreenEventCopyWithImpl<$Res, _$SearchStudent>
    implements _$$SearchStudentCopyWith<$Res> {
  __$$SearchStudentCopyWithImpl(
      _$SearchStudent _value, $Res Function(_$SearchStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = null,
  }) {
    return _then(_$SearchStudent(
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStudent implements SearchStudent {
  const _$SearchStudent({required this.searchValue});

  @override
  final String searchValue;

  @override
  String toString() {
    return 'SearchScreenEvent.searchStudent(searchValue: $searchValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStudent &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStudentCopyWith<_$SearchStudent> get copyWith =>
      __$$SearchStudentCopyWithImpl<_$SearchStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialSearch,
    required TResult Function(String searchValue) searchStudent,
  }) {
    return searchStudent(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialSearch,
    TResult? Function(String searchValue)? searchStudent,
  }) {
    return searchStudent?.call(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialSearch,
    TResult Function(String searchValue)? searchStudent,
    required TResult orElse(),
  }) {
    if (searchStudent != null) {
      return searchStudent(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSearch value) initialSearch,
    required TResult Function(SearchStudent value) searchStudent,
  }) {
    return searchStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSearch value)? initialSearch,
    TResult? Function(SearchStudent value)? searchStudent,
  }) {
    return searchStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSearch value)? initialSearch,
    TResult Function(SearchStudent value)? searchStudent,
    required TResult orElse(),
  }) {
    if (searchStudent != null) {
      return searchStudent(this);
    }
    return orElse();
  }
}

abstract class SearchStudent implements SearchScreenEvent {
  const factory SearchStudent({required final String searchValue}) =
      _$SearchStudent;

  String get searchValue;
  @JsonKey(ignore: true)
  _$$SearchStudentCopyWith<_$SearchStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchScreenState {
  List<SongTypes> get Songs => throw _privateConstructorUsedError;
  List<SongTypes> get SearchSongs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchScreenStateCopyWith<SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenStateCopyWith<$Res> {
  factory $SearchScreenStateCopyWith(
          SearchScreenState value, $Res Function(SearchScreenState) then) =
      _$SearchScreenStateCopyWithImpl<$Res, SearchScreenState>;
  @useResult
  $Res call({List<SongTypes> Songs, List<SongTypes> SearchSongs});
}

/// @nodoc
class _$SearchScreenStateCopyWithImpl<$Res, $Val extends SearchScreenState>
    implements $SearchScreenStateCopyWith<$Res> {
  _$SearchScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Songs = null,
    Object? SearchSongs = null,
  }) {
    return _then(_value.copyWith(
      Songs: null == Songs
          ? _value.Songs
          : Songs // ignore: cast_nullable_to_non_nullable
              as List<SongTypes>,
      SearchSongs: null == SearchSongs
          ? _value.SearchSongs
          : SearchSongs // ignore: cast_nullable_to_non_nullable
              as List<SongTypes>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SongTypes> Songs, List<SongTypes> SearchSongs});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Songs = null,
    Object? SearchSongs = null,
  }) {
    return _then(_$_Initial(
      Songs: null == Songs
          ? _value._Songs
          : Songs // ignore: cast_nullable_to_non_nullable
              as List<SongTypes>,
      SearchSongs: null == SearchSongs
          ? _value._SearchSongs
          : SearchSongs // ignore: cast_nullable_to_non_nullable
              as List<SongTypes>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<SongTypes> Songs,
      required final List<SongTypes> SearchSongs})
      : _Songs = Songs,
        _SearchSongs = SearchSongs;

  final List<SongTypes> _Songs;
  @override
  List<SongTypes> get Songs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Songs);
  }

  final List<SongTypes> _SearchSongs;
  @override
  List<SongTypes> get SearchSongs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_SearchSongs);
  }

  @override
  String toString() {
    return 'SearchScreenState(Songs: $Songs, SearchSongs: $SearchSongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._Songs, _Songs) &&
            const DeepCollectionEquality()
                .equals(other._SearchSongs, _SearchSongs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_Songs),
      const DeepCollectionEquality().hash(_SearchSongs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements SearchScreenState {
  const factory _Initial(
      {required final List<SongTypes> Songs,
      required final List<SongTypes> SearchSongs}) = _$_Initial;

  @override
  List<SongTypes> get Songs;
  @override
  List<SongTypes> get SearchSongs;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
