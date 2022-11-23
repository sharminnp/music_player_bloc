import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/application/favSong/fav_song_bloc.dart';
import 'package:music_player/domain/models/types.dart';
import 'package:music_player/presentation/widgets/favouritesFunctn.dart';

import 'package:on_audio_query/on_audio_query.dart';

class Favourites extends StatelessWidget {
  Favourites({
    Key? key,
  }) : super(key: key);

//   @override
//   State<Favourites> createState() => _FavouritesState();
// }

// class _FavouritesState extends State<Favourites> {
  Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
  final _auidoQuery = OnAudioQuery();
  final AssetsAudioPlayer _audioplayer = AssetsAudioPlayer();

  Box<List> PlaylistBox = Hive.box<List>("Playlist");
  List<SongTypes>? favSongs;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   favSongs = PlaylistBox.get('favourites')!.toList().cast<SongTypes>();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var _MediaQuery = MediaQuery.of(context);
    return BlocBuilder<FavSongBloc, FavSongState>(builder: (context, state) {
      //     valueListenable: PlaylistBox.listenable(),
      //     builder: (BuildContext context, Box<List> value, Widget? child) {
      List<SongTypes> songList =
          PlaylistBox.get('favourites')!.toList().cast<SongTypes>();
      return (songList.isEmpty)
          ? Center(
              child: Text("No Favourite songs"),
            )
          : ListView.separated(
              separatorBuilder: ((context, index) => SizedBox(
                    height: _MediaQuery.size.height * 0.01,
                  )),
              itemCount: songList.length,
              itemBuilder: (context, index) {
                return FavFunction(
                    context: context, songList: songList, index: index);
              },
            );
    });
  }
}
