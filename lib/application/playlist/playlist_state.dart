part of 'playlist_bloc.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const factory PlaylistState(
      {required List playlistListName,
      required String playlistName,
      required List<SongTypes> playlistSong}) = _PlaylistState;
  factory PlaylistState.initial() {
    Box<List> PlaylistBox = Hive.box<List>("Playlist");
    final List<dynamic> keys = PlaylistBox.keys.toList();
    keys.removeWhere((Key) => Key == 'favourites');
    keys.removeWhere((Key) => Key == 'mostlyPlayed');
    keys.removeWhere((Key) => Key == 'recent');
    return PlaylistState(
        playlistListName: keys, playlistName: '', playlistSong: []);
  }
}
