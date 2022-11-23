part of 'recent_song_bloc.dart';

@freezed
class RecentSongState with _$RecentSongState {
  const factory RecentSongState(
      {required List<SongTypes> recentSongList,
      required int RecentListLength}) = _Initial;
  factory RecentSongState.initial() {
    Box<List> PlaylistBox = Hive.box<List>("Playlist");

    return RecentSongState(
        recentSongList: PlaylistBox.get('recent')!.toList().cast<SongTypes>(),
        RecentListLength: PlaylistBox.get('recent')!.toList().length);
  }
}
