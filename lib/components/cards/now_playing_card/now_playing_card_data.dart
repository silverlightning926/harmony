import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/models/currently_playing_state/item.dart';

class NowPlayingCardData extends StatelessWidget {
  final Item item;

  const NowPlayingCardData({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
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
          borderRadius: BorderRadius.circular(20),
          child: Material(
            child: InkWell(
              onTap: () {
                context.push('/song/${item.id}');
              },
              child: Ink(
                height: 200,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    matchTextDirection: true,
                    image: NetworkImage(
                      item.album?.images?.first.url ?? '',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Currently Playing",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.music_note),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name ?? '',
                              style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 3),
                            Text(
                              item.artists
                                      ?.map((artist) => artist.name)
                                      .join(', ') ??
                                  '',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
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
