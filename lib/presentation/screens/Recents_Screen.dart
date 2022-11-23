import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/application/recentSong/recent_song_bloc.dart';
import 'package:music_player/presentation/widgets/Recent.dart';

class RecentsScreen extends StatelessWidget {
  const RecentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<RecentSongBloc>(context).add(const GetRecentSongList());
    });

    return Scaffold(
      backgroundColor: const Color(0xff9C95A1),
      appBar: AppBar(
        backgroundColor: const Color(0xff9C95A1),
        centerTitle: true,
        title: const Text(
          "Rencently Played",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff3A2D43),
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 13, right: 13, top: 8),
              child: RecentSongs(),
            ),
          ),
          // MiniPlayer(
          //   context: context,
          //   image:
          //       "https://a10.gaanacdn.com/gn_img/albums/mGjKrP1W6z/jKrPvDqVW6/size_l.jpg",
          //   songname: 'Always',
          //   artist: 'Isak Danielson',
          // ),
        ],
      ),
    );
  }
}
