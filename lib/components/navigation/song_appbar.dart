import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/providers/spotify_providers.dart';

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
          expandedHeight: 200,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.fromLTRB(72, 10, 20, 10),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  track.name!,
                  maxLines: 2,
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
        );
      },
      loading: () => const SliverToBoxAdapter(
        child: LinearProgressIndicator(),
      ),
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
