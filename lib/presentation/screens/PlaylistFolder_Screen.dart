import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:music_player/application/playlist/playlist_bloc.dart';
import 'package:music_player/domain/models/types.dart';
import 'package:music_player/functions/playlist_func.dart';
import 'package:music_player/presentation/screens/Playlist_Screen.dart';
import 'package:music_player/presentation/widgets/playlist_function.dart';
import 'package:music_player/presentation/widgets/textfielPlaylist.dart';

class PlaylistFolderScreen extends StatelessWidget {
  PlaylistFolderScreen({
    Key? key,
  }) : super(key: key);

  Box<List> playlistBox = Hive.box<List>("Playlist");
  SongTypes? song;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PlaylistBloc>(context).add(const GetPlaylistNames());
    });
    var _MediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: const Color(0xff9C95A1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff9C95A1),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  Alertfunc.showCreatingPlaylistDialogue(context);
                },
                icon: const Icon(
                  Icons.library_add,
                  size: 30,
                  color: Color(0xff3A2D43),
                )),
          ),
        ],
      ),
      body: BlocBuilder<PlaylistBloc, PlaylistState>(
        builder: (context, state) {
          BlocProvider.of<PlaylistBloc>(context).add(const GetPlaylistNames());
          return state.playlistListName.isEmpty
              ? const Center(
                  child: Text("Save your Music Collection in Playlist"),
                )
              : GridView.builder(
                  itemCount: state.playlistListName.length,
                  itemBuilder: (context, index) {
                    final String playlistName = state.playlistListName[index];
                    final List<SongTypes> playlistSongList = playlistBox
                        .get(playlistName)!
                        .toList()
                        .cast<SongTypes>();
                    final int playlistSongListlength = playlistSongList.length;
                    // return folderplaylist(context, playlistName, );
                    return folderplaylist(
                      context: context,
                      playlistName: playlistName,
                      length: '$playlistSongListlength songs',
                      playlistSongList: playlistSongList,
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // mainAxisSpacing: 5,
                    // crossAxisSpacing: 5,
                    childAspectRatio: 3 / 2,
                  ),
                );
        },
      ),
    );
  }

  folderplaylist(
      {required BuildContext context,
      required String playlistName,
      required String length,
      required List<SongTypes> playlistSongList}) {
    var _MediaQuery = MediaQuery.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => PlaylistScreen(
                      playlistName: playlistName,
                    ),
                  ));
              FuncPlayList.addSongtoPlaylist(
                context: context,
                id: song!.id,
                playlistName: playlistName,
              );
            },
            child: Container(
              height: _MediaQuery.size.height * 0.120,
              width: _MediaQuery.size.width * 0.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff4a4e69),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4, top: 25),
                    child: Text(
                      playlistName,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffDCC6C6),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                    ),
                    child: Row(
                      children: [
                        Text(
                          length,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: PopupMenuButton(
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 20,
                              ),
                              itemBuilder: ((ctx) => [
                                    PopupMenuItem(
                                      value: "0",
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          BlocBuilder<PlaylistBloc,
                                              PlaylistState>(
                                            builder: (context, state) {
                                              return IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    showeditAlert(
                                                      context: ctx,
                                                      playlistName:
                                                          playlistName,
                                                      playlistSongList:
                                                          playlistSongList,
                                                    );
                                                  },
                                                  icon: Icon(
                                                    Icons.edit,
                                                    color: Colors.black,
                                                  ));
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem(
                                        value: 1,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            BlocBuilder<PlaylistBloc,
                                                PlaylistState>(
                                              builder: (context, state) {
                                                return IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    FuncPlayList
                                                        .showPlaylistDeleteAlert(
                                                      context: ctx,
                                                      key: playlistName,
                                                    );
                                                  },
                                                  icon: Icon(
                                                    Icons.delete,
                                                    size: 30,
                                                    color: Colors.black,
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        )),
                                  ])),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  showeditAlert({
    required BuildContext context,
    required String playlistName,
    required List<SongTypes> playlistSongList,
  }) {
    final TextEditingController textcontroller =
        TextEditingController(text: playlistName);
    return showDialog(
        context: context,
        builder: (ctx) {
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
