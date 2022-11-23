part of 'most_song_bloc.dart';

@freezed
class MostSongEvent with _$MostSongEvent {
  const factory MostSongEvent.getMostSongList() = GetMostSongList;
  const factory MostSongEvent.getMostSongListLength() = GetMostSongListLength;
}
