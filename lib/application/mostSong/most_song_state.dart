part of 'most_song_bloc.dart';

@freezed
class MostSongState with _$MostSongState {
  const factory MostSongState(
      {required List<SongTypes> mostPlayedList,
      required int mostListLength}) = _Initial;
  factory MostSongState.initial() {
    Box<List> PlaylistBox = Hive.box<List>("Playlist");
    return MostSongState(
        mostPlayedList:
            PlaylistBox.get('mostlyPlayed')!.toList().cast<SongTypes>(),
        mostListLength: PlaylistBox.get('mostlyPlayed')!.toList().length);
  }
}
