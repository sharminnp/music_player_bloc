import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'package:music_player/application/playlist/playlist_bloc.dart';
import 'package:music_player/domain/models/types.dart';
import 'package:music_player/presentation/widgets/textfielPlaylist.dart';

import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'fav_func.dart';

class FuncPlayList {
  static playlistSongDelete(
      {required BuildContext context,
      required String playlistName,
      required String songid}) async {
    List<SongTypes> playlistsong =
        PlaylistBox.get(playlistName)!.toList().cast<SongTypes>();
    List<SongTypes> allsongs = songBox.values.toList().cast<SongTypes>();
    SongTypes psong =
        allsongs.firstWhere((element) => element.id.contains(songid));
    playlistsong.removeWhere((element) => element.id == songid);
    await PlaylistBox.put(playlistName, playlistsong);
    ShowplaylistSnackbar(
        context: context,
        songName: psong.title,
        message: "Song Removed From Playlist");
  }

  static addSongtoPlaylist(
      {required BuildContext context,
      required id,
      required String playlistName}) async {
    Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
    Box<List> PlaylistBox = Hive.box<List>("Playlist");
    List<SongTypes> playlistsong =
        PlaylistBox.get(playlistName)!.toList().cast<SongTypes>();
    List<SongTypes> allsongs = songBox.values.toList().cast<SongTypes>();
    SongTypes song = allsongs.firstWhere((element) => element.id.contains(id));
    if (playlistsong.contains(song)) {
      ShowplaylistSnackbar(
          context: context,
          songName: song.title,
          message: "Already Existed In The Playlist");
    } else {
      playlistsong.add(song);
      await PlaylistBox.put(playlistName, playlistsong);
      ShowplaylistSnackbar(
          context: context, songName: song.title, message: "Added To Playlist");
    }
  }

  static ShowplaylistSnackbar(
      {required BuildContext context,
      required songName,
      required String message}) {
    showTopSnackBar(
      context,
      CustomSnackBar.success(
        message: songName + '\n' + message,
        backgroundColor: Color(0xffDCC6C6),
      ),
    );
  }

  static showPlaylistDeleteAlert(
      {required BuildContext context, required String key}) {
    Box<List> playlistBox = Hive.box<List>("Playlist");
    return showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Conform Deletion"),
            content: Text("Do you want to Delete this Playlist"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                  child: Text("Cancel")),
              TextButton(
                  onPressed: () async {
                    Navigator.pop(ctx);
                    await PlaylistBox.delete(key);
                    BlocProvider.of<PlaylistBloc>(context)
                        .add(const GetPlaylistNames());
                  },
                  child: Text("Confirm")),
            ],
          );
        });
  }

  static showeditAlert({
    required BuildContext context,
    required String playlistName,
    required List<SongTypes> playlistSongList,
  }) {
    final TextEditingController textcontroller =
        TextEditingController(text: playlistName);
    return showDialog(
        context: context,
        builder: (ctx) {
          Box<List> playlistBox = Hive.box<List>("Playlist");

          final formkey = GlobalKey<FormState>();
          return Form(
            key: formkey,
            child: AlertDialog(
              title: Text("Edit playlist"),
              content: TextFieldPlaylist(
                hintText: "Edit Here",
                validator: (value) {
                  final keys = Hive.box<List>("Playlist").keys.toList();
                  if (value == null || value.isEmpty) {
                    return "feild is empty";
                  }
                  if (keys.contains(value)) {
                    return '$value Already Exist';
                  }
                  return null;
                },
                textController: textcontroller,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                  child: const Text("Cancel"),
                ),
                TextButton(
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        final newPlaylistName = textcontroller.text.trim();
                        await playlistBox.put(
                            newPlaylistName, playlistSongList);

                        await playlistBox.delete(playlistName);
                        BlocProvider.of<PlaylistBloc>(context)
                            .add(const GetPlaylistNames());
                        Navigator.pop(ctx);
                      }
                    },
                    child: Text("Confirm")),
              ],
            ),
          );
        });
  }
}
