import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:music_player/domain/models/types.dart';
part 'playlist_event.dart';
part 'playlist_state.dart';
part 'playlist_bloc.freezed.dart';

class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  PlaylistBloc() : super(PlaylistState.initial()) {
    Box<List> playlistBox = Hive.box<List>("Playlist");
    on<GetPlaylistNames>((event, emit) {
      final List<dynamic> keys = playlistBox.keys.toList();
      keys.removeWhere((Key) => Key == 'favourites');
      keys.removeWhere((Key) => Key == 'mostlyPlayed');
      keys.removeWhere((Key) => Key == 'recent');
      emit(
        PlaylistState(
          playlistListName: keys,
          playlistName: state.playlistName,
          playlistSong: state.playlistSong,
        ),
      );
    });

    on<Renameplaylist>((event, emit) async {
      List<SongTypes> _playlistBoxSongs =
          playlistBox.get(state.playlistName)!.toList().cast<SongTypes>();
      await playlistBox.put(event.newPlaylistName, _playlistBoxSongs);
      await playlistBox.delete(event.oldPlaylistName);
      emit(PlaylistState(
          playlistListName: state.playlistListName,
          playlistName: event.newPlaylistName,
          playlistSong: _playlistBoxSongs));
    });

    on<GetPlaylistSongs>((event, emit) {
      List<SongTypes> _playlistBoxSongs =
          playlistBox.get(event.playlistName)!.toList().cast<SongTypes>();

      emit(PlaylistState(
          playlistListName: state.playlistListName,
          playlistName: event.playlistName,
          playlistSong: _playlistBoxSongs));
    });
  }
}
