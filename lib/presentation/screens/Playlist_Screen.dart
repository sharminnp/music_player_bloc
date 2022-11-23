import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/application/playlist/playlist_bloc.dart';
import 'package:music_player/presentation/widgets/playlistsong.dart';

class PlaylistScreen extends StatelessWidget {
  PlaylistScreen({Key? key, required this.playlistName}) : super(key: key);
  final String playlistName;

  Box<List> playlistBox = Hive.box<List>("Playlist");

  final AssetsAudioPlayer _audioplayer = AssetsAudioPlayer.withId('0');

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PlaylistBloc>(context)
          .add(GetPlaylistSongs(playlistName: playlistName));
    });

    var _MediaQuery = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Color(0xff9C95A1),
        appBar: AppBar(
          backgroundColor: Color(0xff9C95A1),
          title: Text(
            playlistName,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff3A2D43),
              fontWeight: FontWeight.w600,
            ),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body:
            BlocBuilder<PlaylistBloc, PlaylistState>(builder: (context, state) {
          return Container(
            child: (state.playlistSong.isEmpty)
                ? const Center(
                    child: Text("No playlist songs"),
                  )
                : ListView.separated(
                    separatorBuilder: ((context, index) => SizedBox(
                          height: _MediaQuery.size.height * 0.01,
                        )),
                    itemCount: state.playlistSong.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 13, right: 13, top: 5),
                        child: PlaylistSongs(
                          context: context,
                          songList: state.playlistSong,
                          index: index,
                          playlistName: playlistName,
                        ),
                      );
                    },
                  ),
          );
        }));
  }
}
