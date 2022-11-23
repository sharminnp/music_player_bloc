import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:music_player/domain/models/types.dart';

import '../../functions/fav_func.dart';

part 'fav_song_event.dart';
part 'fav_song_state.dart';
part 'fav_song_bloc.freezed.dart';

class FavSongBloc extends Bloc<FavSongEvent, FavSongState> {
  FavSongBloc() : super(FavSongState.initial()) {
    on<GetSongList>((event, emit) {
      emit(FavSongState(
          favSongList:
              PlaylistBox.get('favourites')!.toList().cast<SongTypes>(),
          favSongListLength: state.favSongListLength));
    });

    on<GetPlaylistLength>((event, emit) {
      return emit(FavSongState(
          favSongList: state.favSongList,
          favSongListLength: PlaylistBox.get('favourites')!.toList().length));
    });
  }
}
