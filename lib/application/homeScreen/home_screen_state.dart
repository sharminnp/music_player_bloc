part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required List<SongTypes> songList,
  }) = _HomeScreenState;
  factory HomeScreenState.initial() {
    Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
    return HomeScreenState(songList: songBox.values.toList());
  }
}
