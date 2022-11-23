import 'package:hive/hive.dart';
import 'package:music_player/domain/models/types.dart';

Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
Box<List> PlaylistBox = Hive.box<List>("Playlist");
addSongstoMostlyPlayed(String id) async {
  final List<SongTypes> mostPlayedList =
      PlaylistBox.get('mostlyPlayed')!.toList().cast<SongTypes>();
  final dbSongs = songBox.values.toList().cast<SongTypes>();
  final mostPlayedSong = dbSongs.firstWhere((song) => song.id.contains(id));
  if (mostPlayedList.length >= 10) {
    mostPlayedList.removeLast();
  }
  if (mostPlayedSong.count >= 3) {
    if (mostPlayedList.where((song) => song.id == mostPlayedSong.id).isEmpty) {
      mostPlayedList.insert(0, mostPlayedSong);
      await PlaylistBox.put('mostlyPlayed', mostPlayedList);
    } else {
      mostPlayedList.removeWhere((song) => song.id == mostPlayedSong.id);
      mostPlayedList.insert(0, mostPlayedSong);
      await PlaylistBox.put('mostlyPlayed', mostPlayedList);
    }
  }
}
