import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/domain/models/types.dart';

Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
Box<List> PlaylistBox = Hive.box<List>("Playlist");

addSongstoFavourites(
    {required BuildContext context, required String id}) async {
  List<SongTypes> allsongs = songBox.values.toList().cast();

  final List<SongTypes> favSongList =
      PlaylistBox.get('favourites')!.toList().cast<SongTypes>();

  final SongTypes favsong = allsongs.firstWhere((song) => song.id.contains(id));

  if (favSongList.where((song) => song.id == favsong.id).isEmpty) {
    favSongList.add(favsong);

    await PlaylistBox.put('favourites', favSongList);
    showFavouriteSnackbar(
        context: context,
        songName: favsong.title,
        message: "Added To Favourite");
  } else {
    favSongList.removeWhere((songs) => songs.id == favsong.id);
    await PlaylistBox.put('favourites', favSongList);
    showFavouriteSnackbar(
        context: context,
        songName: favsong.title,
        message: "Removed From Favourites");
  }
}

IconData isThisFavourite({required String id}) {
  final List<SongTypes> allsongs = songBox.values.toList().cast();

  List<SongTypes> favSongList =
      PlaylistBox.get('favourites')!.toList().cast<SongTypes>();

  SongTypes favsong = allsongs.firstWhere((song) => song.id.contains(id));

  return favSongList.where((song) => song.id == favsong.id).isEmpty
      ? Icons.favorite_outline
      : Icons.favorite;
}

showFavouriteSnackbar(
    {required BuildContext context,
    required String songName,
    required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        backgroundColor: Color(0xff3A2D43),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        duration: Duration(seconds: 1),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              maxLines: 1,
              style: TextStyle(fontSize: 15),
            ),
            Text(
              songName,
              maxLines: 1,
              style: TextStyle(fontSize: 13),
            )
          ],
        )),
  );
}
