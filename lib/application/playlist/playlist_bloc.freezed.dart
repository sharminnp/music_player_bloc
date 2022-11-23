// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylistNames,
    required TResult Function(String oldPlaylistName, String newPlaylistName)
        renameplaylist,
    required TResult Function(String playlistName) getPlaylistSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylistNames,
    TResult? Function(String oldPlaylistName, String newPlaylistName)?
        renameplaylist,
    TResult? Function(String playlistName)? getPlaylistSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylistNames,
    TResult Function(String oldPlaylistName, String newPlaylistName)?
        renameplaylist,
    TResult Function(String playlistName)? getPlaylistSongs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaylistNames value) getPlaylistNames,
    required TResult Function(Renameplaylist value) renameplaylist,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlaylistNames value)? getPlaylistNames,
    TResult? Function(Renameplaylist value)? renameplaylist,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaylistNames value)? getPlaylistNames,
    TResult Function(Renameplaylist value)? renameplaylist,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistEventCopyWith<$Res> {
  factory $PlaylistEventCopyWith(
          PlaylistEvent value, $Res Function(PlaylistEvent) then) =
      _$PlaylistEventCopyWithImpl<$Res, PlaylistEvent>;
}

/// @nodoc
class _$PlaylistEventCopyWithImpl<$Res, $Val extends PlaylistEvent>
    implements $PlaylistEventCopyWith<$Res> {
  _$PlaylistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPlaylistNamesCopyWith<$Res> {
  factory _$$GetPlaylistNamesCopyWith(
          _$GetPlaylistNames value, $Res Function(_$GetPlaylistNames) then) =
      __$$GetPlaylistNamesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlaylistNamesCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$GetPlaylistNames>
    implements _$$GetPlaylistNamesCopyWith<$Res> {
  __$$GetPlaylistNamesCopyWithImpl(
      _$GetPlaylistNames _value, $Res Function(_$GetPlaylistNames) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPlaylistNames
    with DiagnosticableTreeMixin
    implements GetPlaylistNames {
  const _$GetPlaylistNames();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistEvent.getPlaylistNames()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PlaylistEvent.getPlaylistNames'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlaylistNames);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylistNames,
    required TResult Function(String oldPlaylistName, String newPlaylistName)
        renameplaylist,
    required TResult Function(String playlistName) getPlaylistSongs,
  }) {
    return getPlaylistNames();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylistNames,
    TResult? Function(String oldPlaylistName, String newPlaylistName)?
        renameplaylist,
    TResult? Function(String playlistName)? getPlaylistSongs,
  }) {
    return getPlaylistNames?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylistNames,
    TResult Function(String oldPlaylistName, String newPlaylistName)?
        renameplaylist,
    TResult Function(String playlistName)? getPlaylistSongs,
    required TResult orElse(),
  }) {
    if (getPlaylistNames != null) {
      return getPlaylistNames();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaylistNames value) getPlaylistNames,
    required TResult Function(Renameplaylist value) renameplaylist,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
  }) {
    return getPlaylistNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlaylistNames value)? getPlaylistNames,
    TResult? Function(Renameplaylist value)? renameplaylist,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
  }) {
    return getPlaylistNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaylistNames value)? getPlaylistNames,
    TResult Function(Renameplaylist value)? renameplaylist,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
    required TResult orElse(),
  }) {
    if (getPlaylistNames != null) {
      return getPlaylistNames(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistNames implements PlaylistEvent {
  const factory GetPlaylistNames() = _$GetPlaylistNames;
}

/// @nodoc
abstract class _$$RenameplaylistCopyWith<$Res> {
  factory _$$RenameplaylistCopyWith(
          _$Renameplaylist value, $Res Function(_$Renameplaylist) then) =
      __$$RenameplaylistCopyWithImpl<$Res>;
  @useResult
  $Res call({String oldPlaylistName, String newPlaylistName});
}

/// @nodoc
class __$$RenameplaylistCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$Renameplaylist>
    implements _$$RenameplaylistCopyWith<$Res> {
  __$$RenameplaylistCopyWithImpl(
      _$Renameplaylist _value, $Res Function(_$Renameplaylist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPlaylistName = null,
    Object? newPlaylistName = null,
  }) {
    return _then(_$Renameplaylist(
      oldPlaylistName: null == oldPlaylistName
          ? _value.oldPlaylistName
          : oldPlaylistName // ignore: cast_nullable_to_non_nullable
              as String,
      newPlaylistName: null == newPlaylistName
          ? _value.newPlaylistName
          : newPlaylistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Renameplaylist with DiagnosticableTreeMixin implements Renameplaylist {
  const _$Renameplaylist(
      {required this.oldPlaylistName, required this.newPlaylistName});

  @override
  final String oldPlaylistName;
  @override
  final String newPlaylistName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistEvent.renameplaylist(oldPlaylistName: $oldPlaylistName, newPlaylistName: $newPlaylistName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistEvent.renameplaylist'))
      ..add(DiagnosticsProperty('oldPlaylistName', oldPlaylistName))
      ..add(DiagnosticsProperty('newPlaylistName', newPlaylistName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Renameplaylist &&
            (identical(other.oldPlaylistName, oldPlaylistName) ||
                other.oldPlaylistName == oldPlaylistName) &&
            (identical(other.newPlaylistName, newPlaylistName) ||
                other.newPlaylistName == newPlaylistName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldPlaylistName, newPlaylistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RenameplaylistCopyWith<_$Renameplaylist> get copyWith =>
      __$$RenameplaylistCopyWithImpl<_$Renameplaylist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylistNames,
    required TResult Function(String oldPlaylistName, String newPlaylistName)
        renameplaylist,
    required TResult Function(String playlistName) getPlaylistSongs,
  }) {
    return renameplaylist(oldPlaylistName, newPlaylistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylistNames,
    TResult? Function(String oldPlaylistName, String newPlaylistName)?
        renameplaylist,
    TResult? Function(String playlistName)? getPlaylistSongs,
  }) {
    return renameplaylist?.call(oldPlaylistName, newPlaylistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylistNames,
    TResult Function(String oldPlaylistName, String newPlaylistName)?
        renameplaylist,
    TResult Function(String playlistName)? getPlaylistSongs,
    required TResult orElse(),
  }) {
    if (renameplaylist != null) {
      return renameplaylist(oldPlaylistName, newPlaylistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaylistNames value) getPlaylistNames,
    required TResult Function(Renameplaylist value) renameplaylist,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
  }) {
    return renameplaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlaylistNames value)? getPlaylistNames,
    TResult? Function(Renameplaylist value)? renameplaylist,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
  }) {
    return renameplaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaylistNames value)? getPlaylistNames,
    TResult Function(Renameplaylist value)? renameplaylist,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
    required TResult orElse(),
  }) {
    if (renameplaylist != null) {
      return renameplaylist(this);
    }
    return orElse();
  }
}

abstract class Renameplaylist implements PlaylistEvent {
  const factory Renameplaylist(
      {required final String oldPlaylistName,
      required final String newPlaylistName}) = _$Renameplaylist;

  String get oldPlaylistName;
  String get newPlaylistName;
  @JsonKey(ignore: true)
  _$$RenameplaylistCopyWith<_$Renameplaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlaylistSongsCopyWith<$Res> {
  factory _$$GetPlaylistSongsCopyWith(
          _$GetPlaylistSongs value, $Res Function(_$GetPlaylistSongs) then) =
      __$$GetPlaylistSongsCopyWithImpl<$Res>;
  @useResult
  $Res call({String playlistName});
}

/// @nodoc
class __$$GetPlaylistSongsCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$GetPlaylistSongs>
    implements _$$GetPlaylistSongsCopyWith<$Res> {
  __$$GetPlaylistSongsCopyWithImpl(
      _$GetPlaylistSongs _value, $Res Function(_$GetPlaylistSongs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
  }) {
    return _then(_$GetPlaylistSongs(
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPlaylistSongs
    with DiagnosticableTreeMixin
    implements GetPlaylistSongs {
  const _$GetPlaylistSongs({required this.playlistName});

  @override
  final String playlistName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistEvent.getPlaylistSongs(playlistName: $playlistName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistEvent.getPlaylistSongs'))
      ..add(DiagnosticsProperty('playlistName', playlistName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaylistSongs &&
            (identical(other.playlistName, playlistName) ||
                other.playlistName == playlistName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaylistSongsCopyWith<_$GetPlaylistSongs> get copyWith =>
      __$$GetPlaylistSongsCopyWithImpl<_$GetPlaylistSongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylistNames,
    required TResult Function(String oldPlaylistName, String newPlaylistName)
        renameplaylist,
    required TResult Function(String playlistName) getPlaylistSongs,
  }) {
    return getPlaylistSongs(playlistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylistNames,
    TResult? Function(String oldPlaylistName, String newPlaylistName)?
        renameplaylist,
    TResult? Function(String playlistName)? getPlaylistSongs,
  }) {
    return getPlaylistSongs?.call(playlistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylistNames,
    TResult Function(String oldPlaylistName, String newPlaylistName)?
        renameplaylist,
    TResult Function(String playlistName)? getPlaylistSongs,
    required TResult orElse(),
  }) {
    if (getPlaylistSongs != null) {
      return getPlaylistSongs(playlistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaylistNames value) getPlaylistNames,
    required TResult Function(Renameplaylist value) renameplaylist,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
  }) {
    return getPlaylistSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlaylistNames value)? getPlaylistNames,
    TResult? Function(Renameplaylist value)? renameplaylist,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
  }) {
    return getPlaylistSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaylistNames value)? getPlaylistNames,
    TResult Function(Renameplaylist value)? renameplaylist,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
    required TResult orElse(),
  }) {
    if (getPlaylistSongs != null) {
      return getPlaylistSongs(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistSongs implements PlaylistEvent {
  const factory GetPlaylistSongs({required final String playlistName}) =
      _$GetPlaylistSongs;

  String get playlistName;
  @JsonKey(ignore: true)
  _$$GetPlaylistSongsCopyWith<_$GetPlaylistSongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistState {
  List<dynamic> get playlistListName => throw _privateConstructorUsedError;
  String get playlistName => throw _privateConstructorUsedError;
  List<SongTypes> get playlistSong => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistStateCopyWith<PlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStateCopyWith<$Res> {
  factory $PlaylistStateCopyWith(
          PlaylistState value, $Res Function(PlaylistState) then) =
      _$PlaylistStateCopyWithImpl<$Res, PlaylistState>;
  @useResult
  $Res call(
      {List<dynamic> playlistListName,
      String playlistName,
      List<SongTypes> playlistSong});
}

/// @nodoc
class _$PlaylistStateCopyWithImpl<$Res, $Val extends PlaylistState>
    implements $PlaylistStateCopyWith<$Res> {
  _$PlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistListName = null,
    Object? playlistName = null,
    Object? playlistSong = null,
  }) {
    return _then(_value.copyWith(
      playlistListName: null == playlistListName
          ? _value.playlistListName
          : playlistListName // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
      playlistSong: null == playlistSong
          ? _value.playlistSong
          : playlistSong // ignore: cast_nullable_to_non_nullable
              as List<SongTypes>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaylistStateCopyWith<$Res>
    implements $PlaylistStateCopyWith<$Res> {
  factory _$$_PlaylistStateCopyWith(
          _$_PlaylistState value, $Res Function(_$_PlaylistState) then) =
      __$$_PlaylistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> playlistListName,
      String playlistName,
      List<SongTypes> playlistSong});
}

/// @nodoc
class __$$_PlaylistStateCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res, _$_PlaylistState>
    implements _$$_PlaylistStateCopyWith<$Res> {
  __$$_PlaylistStateCopyWithImpl(
      _$_PlaylistState _value, $Res Function(_$_PlaylistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistListName = null,
    Object? playlistName = null,
    Object? playlistSong = null,
  }) {
    return _then(_$_PlaylistState(
      playlistListName: null == playlistListName
          ? _value._playlistListName
          : playlistListName // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
      playlistSong: null == playlistSong
          ? _value._playlistSong
          : playlistSong // ignore: cast_nullable_to_non_nullable
              as List<SongTypes>,
    ));
  }
}

/// @nodoc

class _$_PlaylistState with DiagnosticableTreeMixin implements _PlaylistState {
  const _$_PlaylistState(
      {required final List<dynamic> playlistListName,
      required this.playlistName,
      required final List<SongTypes> playlistSong})
      : _playlistListName = playlistListName,
        _playlistSong = playlistSong;

  final List<dynamic> _playlistListName;
  @override
  List<dynamic> get playlistListName {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistListName);
  }

  @override
  final String playlistName;
  final List<SongTypes> _playlistSong;
  @override
  List<SongTypes> get playlistSong {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistSong);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistState(playlistListName: $playlistListName, playlistName: $playlistName, playlistSong: $playlistSong)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistState'))
      ..add(DiagnosticsProperty('playlistListName', playlistListName))
      ..add(DiagnosticsProperty('playlistName', playlistName))
      ..add(DiagnosticsProperty('playlistSong', playlistSong));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistState &&
            const DeepCollectionEquality()
                .equals(other._playlistListName, _playlistListName) &&
            (identical(other.playlistName, playlistName) ||
                other.playlistName == playlistName) &&
            const DeepCollectionEquality()
                .equals(other._playlistSong, _playlistSong));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_playlistListName),
      playlistName,
      const DeepCollectionEquality().hash(_playlistSong));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistStateCopyWith<_$_PlaylistState> get copyWith =>
      __$$_PlaylistStateCopyWithImpl<_$_PlaylistState>(this, _$identity);
}

abstract class _PlaylistState implements PlaylistState {
  const factory _PlaylistState(
      {required final List<dynamic> playlistListName,
      required final String playlistName,
      required final List<SongTypes> playlistSong}) = _$_PlaylistState;

  @override
  List<dynamic> get playlistListName;
  @override
  String get playlistName;
  @override
  List<SongTypes> get playlistSong;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistStateCopyWith<_$_PlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}
