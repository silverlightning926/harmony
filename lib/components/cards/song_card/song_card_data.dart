import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/models/recently_played_state/track.dart';

class SongCardData extends StatelessWidget {
  final Track track;

  const SongCardData({
    super.key,
    required this.track,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Animate(
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            child: InkWell(
              onTap: () {
                context.push('/song/${track.id}');
              },
              child: Ink(
                padding: const EdgeInsets.all(10),
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      track.album?.images?.first.url ?? '',
                    ),
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.darken,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              track.name ?? '',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              track.artists
                                      ?.map((artist) => artist.name)
                                      .join(', ') ??
                                  '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
