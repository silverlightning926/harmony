import 'package:flutter/material.dart';
import 'package:harmony/components/cards/now_playing_card.dart';
import 'package:harmony/components/navigation/subtitle_appbar.dart';
import 'package:harmony/components/sections/recent_artist_section.dart';
import 'package:harmony/components/sections/recent_song_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SubtitleAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          NowPlayingCard(),
          SizedBox(height: 20),
          RecentSongsSection(),
          SizedBox(height: 20),
          RecentArtistsSection(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
