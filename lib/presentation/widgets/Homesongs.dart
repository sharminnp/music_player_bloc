import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:music_player/application/homeScreen/home_screen_bloc.dart';
import 'package:music_player/domain/models/types.dart';
import 'package:music_player/presentation/widgets/custom_list_tile.dart';
import 'package:on_audio_query/on_audio_query.dart';

class Homesongs extends StatelessWidget {
  Homesongs({
    Key? key,
    required this.context,
  }) : super(key: key);
  final BuildContext context;

  final _auidoQuery = OnAudioQuery();
  final AssetsAudioPlayer _audioplayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    var _MediaQuery = MediaQuery.of(context);
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        return Container(
          child: (state.songList.isEmpty)
              ? const Center(
                  child: Text("No songs"),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: _MediaQuery.size.height * 0.01,
                  ),
                  itemCount: state.songList.length,
                  itemBuilder: (context, index) {
                    return CustomListTile(
                      context: context,
                      songList: state.songList,
                      index: index,
                    );
                  },
                ),
        );
      },
    );
  }
}
