part of 'search_screen_bloc.dart';

@freezed
class SearchScreenState with _$SearchScreenState {
  const factory SearchScreenState(
      {required List<SongTypes> Songs,
      required List<SongTypes> SearchSongs}) = _Initial;

  factory SearchScreenState.initial() {
    return const SearchScreenState(Songs: [], SearchSongs: []);
  }
}
