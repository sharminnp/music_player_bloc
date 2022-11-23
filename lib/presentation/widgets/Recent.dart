import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:music_player/application/recentSong/recent_song_bloc.dart';
import 'package:music_player/domain/models/types.dart';
import 'package:music_player/presentation/widgets/custom_list_tile.dart';

import 'package:on_audio_query/on_audio_query.dart';

class RecentSongs extends StatelessWidget {
  RecentSongs({Key? key}) : super(key: key);

//   @override
//   State<RecentSongs> createState() => _RecentSongsState();
// }

// class _RecentSongsState extends State<RecentSongs> {
  Box<SongTypes> songBox = Hive.box<SongTypes>("DbSongs");
  final _auidoQuery = OnAudioQuery();
  final AssetsAudioPlayer _audioplayer = AssetsAudioPlayer();

  Box<List> PlaylistBox = Hive.box<List>("Playlist");
  List<SongTypes>? recentSong;
  List<SongTypes>? dbSongs;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   recentSong = PlaylistBox.get('recent')!.toList().cast<SongTypes>();
  //   dbSongs = songBox.values.toList().cast<SongTypes>();
  // }

  @override
  Widget build(BuildContext context) {
    var _MediaQuery = MediaQuery.of(context);

    // return ValueListenableBuilder(
    //     valueListenable: PlaylistBox.listenable(),
    //     builder: (BuildContext context, Box<List> value, Widget? child) {

    return BlocBuilder<RecentSongBloc, RecentSongState>(
      builder: (context, state) {
        //  BlocProvider.of<RecentSongBloc>(context).add(const )

        List<SongTypes> songList =
            PlaylistBox.get('recent')!.toList().cast<SongTypes>();
        return Container(
          child: (songList.isEmpty)
              ? Center(
                  child: Text("No recent songs"),
                )
              : ListView.separated(
                  separatorBuilder: ((context, index) => SizedBox(
                        height: _MediaQuery.size.height * 0.01,
                      )),
                  itemCount: songList.length,
                  itemBuilder: (context, index) {
                    // return RecentTile(
                    //     context: context, songList: songList, index: index);
                    return CustomListTile(
                        context: context, songList: songList, index: index);
                  },
                ),
        );
      },
    );
  }
}
