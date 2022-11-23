import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:music_player/domain/models/types.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState.initial()) {
    Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
    on<Initialize>((event, emit) {
      emit(HomeScreenState(songList: state.songList));
    });
  }
}
