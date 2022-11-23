import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:music_player/domain/models/types.dart';

part 'recent_song_event.dart';
part 'recent_song_state.dart';
part 'recent_song_bloc.freezed.dart';

class RecentSongBloc extends Bloc<RecentSongEvent, RecentSongState> {
  RecentSongBloc() : super(RecentSongState.initial()) {
    Box<List> PlaylistBox = Hive.box<List>("Playlist");

    on<GetRecentSongList>((event, emit) {
      emit(RecentSongState(
          recentSongList: PlaylistBox.get('recent')!.toList().cast<SongTypes>(),
          RecentListLength: state.RecentListLength));
    });

    on<GetRecentSongLength>((event, emit) {
      emit(RecentSongState(
          recentSongList: state.recentSongList,
          RecentListLength: PlaylistBox.get('recent')!.toList().length));
    });
  }
}
