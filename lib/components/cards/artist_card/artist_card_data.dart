import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:harmony/models/artists/artist.dart';

class ArtistCardData extends StatelessWidget {
  final Artist artist;

  const ArtistCardData({super.key, required this.artist});

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
              onTap: () {},
              child: Ink(
                padding: const EdgeInsets.all(10),
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: artist.images!.isNotEmpty
                        ? NetworkImage(artist.images!.first.url!)
                        : const AssetImage(
                            'assets/images/artist_placeholder.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    artist.name!,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
