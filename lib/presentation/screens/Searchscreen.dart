import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/application/searchSong/search_screen_bloc.dart';
import 'package:music_player/presentation/widgets/custom_list_tile.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  final AssetsAudioPlayer _audioplayer = AssetsAudioPlayer.withId('0');
  TextEditingController searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchScreenBloc>(context).add(const InitialSearch());
    });
    var _MediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xff9C95A1),
      appBar: AppBar(
        backgroundColor: Color(0xff9C95A1),
        elevation: 0,
        title: const Text(
          "Search List",
          style: TextStyle(
            color: Color(0xff3A2D43),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                enableSuggestions: true,
                style: const TextStyle(
                  color: Color(0xff4a4e69),
                ),
                onChanged: (value) {
                  BlocProvider.of<SearchScreenBloc>(context)
                      .add(SearchStudent(searchValue: value));
                },
                controller: searchController,
                decoration: InputDecoration(
                    prefixIconColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search here"),
              ),
            ),

            // ignore: non_constant_identifier_names
            BlocBuilder<SearchScreenBloc, SearchScreenState>(
                builder: (context, state) {
              return Expanded(
                  child: (state.SearchSongs.isEmpty)
                      ? const Center(
                          child: Text("No songs Found"),
                        )
                      : ListView.separated(
                          itemCount: state.SearchSongs.length,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: _MediaQuery.size.height * 0.005,
                            );
                          },
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 7),
                              child: CustomListTile(
                                context: context,
                                songList: state.SearchSongs,
                                index: index,
                              ),
                            );
                          },
                        ));
            })
          ],
        ),
      ),
    );
  }
}
