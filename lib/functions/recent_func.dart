import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:music_player/domain/models/types.dart';
import 'package:music_player/functions/mostplayed_func.dart';

Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
Box<List> PlaylistBox = Hive.box<List>("Playlist");

addSongstoRecents({required BuildContext context, required String id}) async {
  List<SongTypes> dbSongs = songBox.values.toList().cast<SongTypes>();

  final List<SongTypes> recentSongList =
      PlaylistBox.get('recent')!.toList().cast<SongTypes>();

  final SongTypes recentSong =
      dbSongs.firstWhere((song) => song.id.contains(id));
  /////////////////////////////////////////////////////////
  int count = recentSong.count;
  recentSong.count = count + 1;
  log(recentSong.count.toString());
  addSongstoMostlyPlayed(id);
//////////////////////////////////////////////////////////
  if (recentSongList.length >= 10) {
    recentSongList.removeLast();
  }

  if (recentSongList.where((song) => song.id == recentSong.id).isEmpty) {
    recentSongList.insert(0, recentSong);
    await PlaylistBox.put('recent', recentSongList);
  } else {
    recentSongList.removeWhere((song) => song.id == recentSong.id);
    recentSongList.insert(0, recentSong);
    await PlaylistBox.put('recent', recentSongList);
  }
}
