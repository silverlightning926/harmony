import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/providers/spotify_providers.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class TrackAlbumCard extends ConsumerWidget {
  final String trackId;

  const TrackAlbumCard({
    super.key,
    required this.trackId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final track = ref.watch(fetchTrackProvider(trackId));
    return track.when(
      data: (track) {
        return Animate(
          effects: const [
            MoveEffect(
              begin: Offset(0, 10),
              end: Offset(0, 0),
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 300),
            ),
            FadeEffect(
              begin: 0,
              end: 1,
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 300),
            ),
          ],
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: track.album!.images!.first.url == null
                      ? Image.asset(
                          'assets/images/artist_placeholder.jpg',
                          height: 150,
                        )
                      : Image.network(
                          track.album!.images!.first.url!,
                          height: 150,
                        ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Album',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  track.album!.name ?? '',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.album),
                    const SizedBox(width: 5),
                    Text(
                      'Disc ${track.discNumber ?? ''}',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      loading: () {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Shimmer(
            child: Container(
              color: Colors.white.withOpacity(0.1),
              height: 250,
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return Text(
          'Error fetching track',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
