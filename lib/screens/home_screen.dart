import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/now_playing_card.dart';
import 'package:harmony/components/navigation/subtitle_appbar.dart';
import 'package:harmony/components/sections/recent_artist_section.dart';
import 'package:harmony/components/sections/recent_song_section.dart';
import 'package:harmony/providers/spotify_providers.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final playbackState = ref.watch(playbackStateStreamProvider);
    bool isPlaying = true;

    return PopScope(
      child: Scaffold(
        appBar: const SubtitleAppBar(),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Visibility(
              visible: isPlaying,
              child: playbackState.when(
                data: (data) {
                  setState(() {
                    isPlaying = false;
                  });
                  return NowPlayingCard(playbackState: data);
                },
                loading: () => ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Shimmer(
                    child: Container(
                      height: 200,
                    ),
                  ),
                ),
                error: (error, _) {
                  setState(() {
                    isPlaying = false;
                  });

                  return Center(
                    child: Text(
                      error.toString(),
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const RecentSongsSection(),
            const SizedBox(height: 20),
            const RecentArtistsSection(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
