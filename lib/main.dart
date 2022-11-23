import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
// import 'package:music_player/application/bloc/most_song_bloc.dart';
// import 'package:music_player/application/mostSong/most_song_bloc.dart';
import 'package:music_player/application/favSong/fav_song_bloc.dart';
import 'package:music_player/application/homeScreen/home_screen_bloc.dart';
import 'package:music_player/application/mostSong/most_song_bloc.dart';
import 'package:music_player/application/playlist/playlist_bloc.dart';
import 'package:music_player/application/recentSong/recent_song_bloc.dart';
import 'package:music_player/application/searchSong/search_screen_bloc.dart';
import 'package:music_player/domain/models/types.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/presentation/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(SongTypesAdapter());
  }
  await Hive.openBox<SongTypes>("DbSongs");
  await Hive.openBox<List>("Playlist");

  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FavSongBloc()),
        BlocProvider(create: (context) => HomeScreenBloc()),
        BlocProvider(create: (context) => PlaylistBloc()),
        BlocProvider(create: (context) => RecentSongBloc()),
        BlocProvider(create: (context) => MostSongBloc()),
        BlocProvider(create: (context) => SearchScreenBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
