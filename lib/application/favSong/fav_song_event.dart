part of 'fav_song_bloc.dart';

@freezed
class FavSongEvent with _$FavSongEvent {
  const factory FavSongEvent.getSongList() = GetSongList;
  const factory FavSongEvent.getPlaylistLength() = GetPlaylistLength;
}
