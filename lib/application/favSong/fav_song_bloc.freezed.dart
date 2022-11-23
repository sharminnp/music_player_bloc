// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fav_song_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavSongEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSongList,
    required TResult Function() getPlaylistLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSongList,
    TResult? Function()? getPlaylistLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSongList,
    TResult Function()? getPlaylistLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSongList value) getSongList,
    required TResult Function(GetPlaylistLength value) getPlaylistLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSongList value)? getSongList,
    TResult? Function(GetPlaylistLength value)? getPlaylistLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSongList value)? getSongList,
    TResult Function(GetPlaylistLength value)? getPlaylistLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavSongEventCopyWith<$Res> {
  factory $FavSongEventCopyWith(
          FavSongEvent value, $Res Function(FavSongEvent) then) =
      _$FavSongEventCopyWithImpl<$Res, FavSongEvent>;
}

/// @nodoc
class _$FavSongEventCopyWithImpl<$Res, $Val extends FavSongEvent>
    implements $FavSongEventCopyWith<$Res> {
  _$FavSongEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSongListCopyWith<$Res> {
  factory _$$GetSongListCopyWith(
          _$GetSongList value, $Res Function(_$GetSongList) then) =
      __$$GetSongListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSongListCopyWithImpl<$Res>
    extends _$FavSongEventCopyWithImpl<$Res, _$GetSongList>
    implements _$$GetSongListCopyWith<$Res> {
  __$$GetSongListCopyWithImpl(
      _$GetSongList _value, $Res Function(_$GetSongList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSongList implements GetSongList {
  const _$GetSongList();

  @override
  String toString() {
    return 'FavSongEvent.getSongList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSongList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSongList,
    required TResult Function() getPlaylistLength,
  }) {
    return getSongList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSongList,
    TResult? Function()? getPlaylistLength,
  }) {
    return getSongList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSongList,
    TResult Function()? getPlaylistLength,
    required TResult orElse(),
  }) {
    if (getSongList != null) {
      return getSongList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSongList value) getSongList,
    required TResult Function(GetPlaylistLength value) getPlaylistLength,
  }) {
    return getSongList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSongList value)? getSongList,
    TResult? Function(GetPlaylistLength value)? getPlaylistLength,
  }) {
    return getSongList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSongList value)? getSongList,
    TResult Function(GetPlaylistLength value)? getPlaylistLength,
    required TResult orElse(),
  }) {
    if (getSongList != null) {
      return getSongList(this);
    }
    return orElse();
  }
}

abstract class GetSongList implements FavSongEvent {
  const factory GetSongList() = _$GetSongList;
}

/// @nodoc
abstract class _$$GetPlaylistLengthCopyWith<$Res> {
  factory _$$GetPlaylistLengthCopyWith(
          _$GetPlaylistLength value, $Res Function(_$GetPlaylistLength) then) =
      __$$GetPlaylistLengthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlaylistLengthCopyWithImpl<$Res>
    extends _$FavSongEventCopyWithImpl<$Res, _$GetPlaylistLength>
    implements _$$GetPlaylistLengthCopyWith<$Res> {
  __$$GetPlaylistLengthCopyWithImpl(
      _$GetPlaylistLength _value, $Res Function(_$GetPlaylistLength) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPlaylistLength implements GetPlaylistLength {
  const _$GetPlaylistLength();

  @override
  String toString() {
    return 'FavSongEvent.getPlaylistLength()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlaylistLength);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSongList,
    required TResult Function() getPlaylistLength,
  }) {
    return getPlaylistLength();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSongList,
    TResult? Function()? getPlaylistLength,
  }) {
    return getPlaylistLength?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSongList,
    TResult Function()? getPlaylistLength,
    required TResult orElse(),
  }) {
    if (getPlaylistLength != null) {
      return getPlaylistLength();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSongList value) getSongList,
    required TResult Function(GetPlaylistLength value) getPlaylistLength,
  }) {
    return getPlaylistLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSongList value)? getSongList,
    TResult? Function(GetPlaylistLength value)? getPlaylistLength,
  }) {
    return getPlaylistLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSongList value)? getSongList,
    TResult Function(GetPlaylistLength value)? getPlaylistLength,
    required TResult orElse(),
  }) {
    if (getPlaylistLength != null) {
      return getPlaylistLength(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistLength implements FavSongEvent {
  const factory GetPlaylistLength() = _$GetPlaylistLength;
}

/// @nodoc
mixin _$FavSongState {
  List<SongTypes> get favSongList => throw _privateConstructorUsedError;
  int get favSongListLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavSongStateCopyWith<FavSongState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavSongStateCopyWith<$Res> {
  factory $FavSongStateCopyWith(
          FavSongState value, $Res Function(FavSongState) then) =
      _$FavSongStateCopyWithImpl<$Res, FavSongState>;
  @useResult
  $Res call({List<SongTypes> favSongList, int favSongListLength});
}

/// @nodoc
class _$FavSongStateCopyWithImpl<$Res, $Val extends FavSongState>
    implements $FavSongStateCopyWith<$Res> {
  _$FavSongStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favSongList = null,
    Object? favSongListLength = null,
  }) {
    return _then(_value.copyWith(
      favSongList: null == favSongList
          ? _value.favSongList
          : favSongList // ignore: cast_nullable_to_non_nullable
              as List<SongTypes>,
      favSongListLength: null == favSongListLength
          ? _value.favSongListLength
          : favSongListLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FavSongStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SongTypes> favSongList, int favSongListLength});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FavSongStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favSongList = null,
    Object? favSongListLength = null,
  }) {
    return _then(_$_Initial(
      favSongList: null == favSongList
          ? _value._favSongList
          : favSongList // ignore: cast_nullable_to_non_nullable
              as List<SongTypes>,
      favSongListLength: null == favSongListLength
          ? _value.favSongListLength
          : favSongListLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<SongTypes> favSongList,
      required this.favSongListLength})
      : _favSongList = favSongList;

  final List<SongTypes> _favSongList;
  @override
  List<SongTypes> get favSongList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favSongList);
  }

  @override
  final int favSongListLength;

  @override
  String toString() {
    return 'FavSongState(favSongList: $favSongList, favSongListLength: $favSongListLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._favSongList, _favSongList) &&
            (identical(other.favSongListLength, favSongListLength) ||
                other.favSongListLength == favSongListLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_favSongList), favSongListLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements FavSongState {
  const factory _Initial(
      {required final List<SongTypes> favSongList,
      required final int favSongListLength}) = _$_Initial;

  @override
  List<SongTypes> get favSongList;
  @override
  int get favSongListLength;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
