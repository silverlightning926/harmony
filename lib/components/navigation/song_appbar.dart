import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/providers/spotify_providers.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class SongAppBar extends ConsumerStatefulWidget {
  final String trackId;

  const SongAppBar({
    super.key,
    required this.trackId,
  });

  @override
  ConsumerState<SongAppBar> createState() => _SongAppBarState();
}

class _SongAppBarState extends ConsumerState<SongAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final track = ref.watch(fetchTrackProvider(widget.trackId));

    return track.when(
      data: (track) {
        return SliverAppBar(
          actions: [
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.spotify,
                color: Color(0xFF1DB954),
              ),
              onPressed: () async {
                if (!await launchUrl(Uri.parse(track.externalUrls!.spotify!))) {
                  throw Exception('Could not launch Spotify URL');
                }
              },
            ),
          ],
          pinned: true,
          expandedHeight: 200,
          flexibleSpace: Animate(
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
            child: Material(
              child: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.fromLTRB(72, 10, 20, 10),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      track.name!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      track.artists?.map((e) => e.name).join(', ') ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                background: track.album?.images?.first.url != null
                    ? Image.network(
                        track.album!.images!.first.url!,
                        fit: BoxFit.cover,
                        colorBlendMode: BlendMode.darken,
                        color: Colors.black.withOpacity(0.5),
                      )
                    : Image.asset(
                        'assets/images/artist_placeholder.jpg',
                        fit: BoxFit.cover,
                        colorBlendMode: BlendMode.darken,
                        color: Colors.black.withOpacity(0.5),
                      ),
              ),
            ),
          ),
        );
      },
      loading: () {
        return SliverToBoxAdapter(
          child: Shimmer(
            child: Container(
              color: Colors.white.withOpacity(0.1),
              height: 200,
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return const SliverToBoxAdapter(
          child: Center(
            child: Text('Error fetching track'),
          ),
        );
      },
    );
  }
}
