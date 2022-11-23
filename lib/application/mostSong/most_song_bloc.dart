import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:music_player/domain/models/types.dart';

part 'most_song_event.dart';
part 'most_song_state.dart';
part 'most_song_bloc.freezed.dart';

class MostSongBloc extends Bloc<MostSongEvent, MostSongState> {
  MostSongBloc() : super(MostSongState.initial()) {
    Box<List> PlaylistBox = Hive.box<List>("Playlist");
    on<GetMostSongList>((event, emit) {
      emit(MostSongState(
          mostPlayedList:
              PlaylistBox.get('mostlyPlayed')!.toList().cast<SongTypes>(),
          mostListLength: state.mostListLength));
    });
    on<GetMostSongListLength>((event, emit) {
      emit(MostSongState(
          mostPlayedList: state.mostPlayedList,
          mostListLength: PlaylistBox.get('mostlyPlayed')!.toList().length));
    });
  }
}
