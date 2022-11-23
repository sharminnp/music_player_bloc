part of 'playlist_bloc.dart';

@freezed
class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.getPlaylistNames() = GetPlaylistNames;
  const factory PlaylistEvent.renameplaylist(
      {required String oldPlaylistName,
      required String newPlaylistName}) = Renameplaylist;
  const factory PlaylistEvent.getPlaylistSongs({required String playlistName}) =
      GetPlaylistSongs;
}
