part of 'fav_song_bloc.dart';

@freezed
class FavSongState with _$FavSongState {
  const factory FavSongState(
      {required List<SongTypes> favSongList,
      required int favSongListLength}) = _Initial;

  factory FavSongState.initial() {
    Box<List> PlaylistBox = Hive.box<List>("Playlist");
    return FavSongState(
        favSongList: PlaylistBox.get('favourites')!.toList().cast<SongTypes>(),
        favSongListLength: PlaylistBox.get('favourites')!.toList().length);
  }
}
