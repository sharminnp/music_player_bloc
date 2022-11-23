import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:music_player/domain/models/types.dart';

import 'package:music_player/presentation/screens/home.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  List<SongModel> fetchedSongs = [];
  List<SongTypes> dbSongs = [];
  Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
  Box<List> playlistBox = Hive.box<List>("Playlist");
  OnAudioQuery audioQuery = OnAudioQuery();

  List<SongTypes> favSongList = [];
  List<SongTypes> recentSongList = [];
  List<SongTypes> mostSongList = [];

  Future<void> navigatetohome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
  }

  Future<void> fetchSongs(BuildContext context) async {
    await Permission.storage.request();
    fetchedSongs = await audioQuery.querySongs(
      sortType: null,
      orderType: OrderType.ASC_OR_SMALLER,
      uriType: UriType.EXTERNAL,
      ignoreCase: true,
    );
    for (var songModel in fetchedSongs) {
      final song = SongTypes(
        id: songModel.id.toString(),
        title: songModel.title,
        artist: songModel.artist!,
        uri: songModel.uri!,
      );
      dbSongs.add(song);
    }

    for (var song in dbSongs) {
      await songBox.put(song.id, song);
    }

    if (!playlistBox.keys.contains('favourites')) {
      await playlistBox.put('favourites', favSongList);
    }

    if (!playlistBox.keys.contains('recent')) {
      await playlistBox.put('recent', recentSongList);
    }

    if (!playlistBox.keys.contains('mostlyPlayed')) {
      await playlistBox.put('mostlyPlayed', mostSongList);
    }
    await navigatetohome(context);
  }

  @override
  Widget build(BuildContext context) {
    fetchSongs(context);
    var _MediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xff9C95A1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 20),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/tunifly-logo.png",
                  width: _MediaQuery.size.width * 0.9,
                  height: _MediaQuery.size.height * 0.5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
