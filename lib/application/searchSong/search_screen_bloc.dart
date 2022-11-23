import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:music_player/domain/models/types.dart';

part 'search_screen_event.dart';
part 'search_screen_state.dart';
part 'search_screen_bloc.freezed.dart';

class SearchScreenBloc extends Bloc<SearchScreenEvent, SearchScreenState> {
  SearchScreenBloc() : super(SearchScreenState.initial()) {
    on<InitialSearch>((event, emit) {
      Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
      emit(
        SearchScreenState(
          Songs: songBox.values.toList(),
          SearchSongs: songBox.values.toList(),
        ),
      );
    });
    on<SearchStudent>((event, emit) {
      List<SongTypes> _searchSongList = state.SearchSongs;
      _searchSongList = state.Songs.where((Song) => Song.title
          .toLowerCase()
          .contains(event.searchValue.toLowerCase())).toList();
      emit(SearchScreenState(Songs: state.Songs, SearchSongs: _searchSongList));
    });
  }
}
