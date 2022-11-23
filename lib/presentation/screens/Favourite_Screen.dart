import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/application/favSong/fav_song_bloc.dart';
import 'package:music_player/presentation/widgets/Favourites.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FavSongBloc>(context).add(const GetSongList());
    });
    return Scaffold(
      backgroundColor: Color(0xff9C95A1),
      appBar: AppBar(
        backgroundColor: Color(0xff9C95A1),
        title: const Text(
          "Favourites",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff3A2D43),
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 13, right: 13, top: 8),
              child: Favourites(),
            ),
          ),
        ],
      ),
    );
  }
}
