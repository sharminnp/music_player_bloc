import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/application/favSong/fav_song_bloc.dart';
import 'package:music_player/application/playlist/playlist_bloc.dart';
import 'package:music_player/domain/models/types.dart';
import 'package:music_player/functions/fav_func.dart';
import 'package:music_player/functions/playlist_func.dart';

import 'package:on_audio_query/on_audio_query.dart';

import 'mini_player.dart';

class PlaylistSongs extends StatelessWidget {
  PlaylistSongs({
    Key? key,
    required this.context,
    required this.songList,
    required this.index,
    required this.playlistName,
  }) : super(key: key);
  final BuildContext context;
  final List<SongTypes> songList;
  final int index;
  final String playlistName;

//   @override
//   State<PlaylistSongs> createState() => _PlaylistSongsState();
// }

// class _PlaylistSongsState extends State<PlaylistSongs> {
  Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
  Box<List> PlaylistBox = Hive.box<List>("Playlist");

  // addSongstoFavourites(
  //     {required BuildContext context, required String id}) async {
  //   List<SongTypes> allsongs = songBox.values.toList().cast();

  //   final List<SongTypes> favSongList =
  //       PlaylistBox.get('favourites')!.toList().cast<SongTypes>();

  //   final SongTypes favsong =
  //       allsongs.firstWhere((song) => song.id.contains(id));

  //   if (favSongList.where((song) => song.id == favsong.id).isEmpty) {
  //     favSongList.add(favsong);

  //     await PlaylistBox.put('favourites', favSongList);
  //     showFavouriteSnackbar(
  //         context: context,
  //         songName: favsong.title,
  //         message: "Added To Favourite");
  //   } else {
  //     favSongList.removeWhere((songs) => songs.id == favsong.id);
  //     await PlaylistBox.put('favourites', favSongList);
  //     showFavouriteSnackbar(
  //         context: context,
  //         songName: favsong.title,
  //         message: "Removed From Favourites");
  //   }
  // }

  // IconData isThisFavourite({required String id}) {
  //   final List<SongTypes> allsongs = songBox.values.toList().cast();

  //   List<SongTypes> favSongList =
  //       PlaylistBox.get('favourites')!.toList().cast<SongTypes>();

  //   SongTypes favsong = allsongs.firstWhere((song) => song.id.contains(id));

  //   return favSongList.where((song) => song.id == favsong.id).isEmpty
  //       ? Icons.favorite_outline
  //       : Icons.favorite;
  // }

  // showFavouriteSnackbar(
  //     {required BuildContext context,
  //     required String songName,
  //     required String message}) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //         backgroundColor: Color(0xff3A2D43),
  //         shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  //         duration: Duration(seconds: 1),
  //         content: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text(
  //               message,
  //               maxLines: 1,
  //               style: TextStyle(fontSize: 15),
  //             ),
  //             Text(
  //               songName,
  //               maxLines: 1,
  //               style: TextStyle(fontSize: 13),
  //             )
  //           ],
  //         )),
  //   );
  // }

  String? newPlaylistName;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   newPlaylistName = widget.playlistName;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff4a4e69),
      ),
      // height: 70,
      width: double.infinity,
      child: ListTile(
        onTap: () {
          // setState(() {
          //   isMiniplayerVisible:
          //   true;
          // });

          showminiPlayer(
            context: context,
            songList: songList,
            index: index,
          );
        },
        // contentPadding: EdgeInsets.symmetric(horizontal: 4),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: QueryArtworkWidget(
              artworkBorder: BorderRadius.circular(0),
              id: int.parse(songList[index].id),
              type: ArtworkType.AUDIO,
              nullArtworkWidget: Image.asset("assets/images/images (1).jpg")),
        ),
        title: Text(
          songList[index].title,
          maxLines: 1,
          style: TextStyle(
            color: Color(0xffDCC6C6),
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          songList[index].artist,
          maxLines: 1,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              color: Colors.white60,
              onPressed: () {
                FuncPlayList.playlistSongDelete(
                  context: context,
                  playlistName: playlistName,
                  songid: songList[index].id,
                );

                BlocProvider.of<PlaylistBloc>(context)
                    .add(GetPlaylistSongs(playlistName: playlistName));
              },
              icon: Icon(Icons.delete),
            ),
            BlocBuilder<FavSongBloc, FavSongState>(
              builder: (context, state) {
                return IconButton(
                  color: Colors.white70,
                  onPressed: () {
                    addSongstoFavourites(
                        context: context, id: songList[index].id);
                    BlocProvider.of<FavSongBloc>(context)
                        .add(const GetSongList());
                    BlocProvider.of<FavSongBloc>(context)
                        .add(const GetPlaylistLength());
                  },
                  icon: Icon(isThisFavourite(id: songList[index].id)),
                );
              },
            ),
          ],
        ),
        //
      ),
    );
  }

  // playlistSongDelete(
  //     {required BuildContext context,
  //     required String playlistName,
  //     required String songid}) async {
  //   List<SongTypes> playlistsong =
  //       PlaylistBox.get(playlistName)!.toList().cast<SongTypes>();
  //   List<SongTypes> allsongs = songBox.values.toList().cast<SongTypes>();
  //   SongTypes psong =
  //       allsongs.firstWhere((element) => element.id.contains(songid));
  //   playlistsong.removeWhere((element) => element.id == songid);
  //   await PlaylistBox.put(playlistName, playlistsong);
  //   ShowplaylistSnackbar(
  //       context: context,
  //       songName: psong.title,
  //       message: "Song Removed From Playlist");
  // }

  showminiPlayer(
      {required BuildContext context,
      required List<SongTypes> songList,
      required int index}) {
    showBottomSheet(
      context: context,
      builder: (ctx) {
        return MiniPlayer(
          songList: songList,
          index: index,
        );
      },
    );
  }
}
