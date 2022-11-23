part of 'recent_song_bloc.dart';

@freezed
class RecentSongEvent with _$RecentSongEvent {
  const factory RecentSongEvent.getRecentSongList() = GetRecentSongList;
  const factory RecentSongEvent.getRecentSongLength() = GetRecentSongLength;
}
