import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/providers/spotify_providers.dart';

class TrackAlbumCard extends ConsumerWidget {
  final String trackId;

  const TrackAlbumCard({
    super.key,
    required this.trackId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final track = ref.watch(fetchTrackProvider(trackId));
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: track.when(
        data: (track) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: track.album!.images!.first.url == null
                    ? Image.asset(
                        'assets/images/artist_placeholder.jpg',
                        fit: BoxFit.cover,
                        colorBlendMode: BlendMode.darken,
                        color: Colors.black.withOpacity(0.5),
                      )
                    : Image.network(track.album!.images!.first.url!),
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
          );
        },
        loading: () {
          return const LinearProgressIndicator();
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
      ),
    );
  }
}
