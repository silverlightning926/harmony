import 'package:flutter/material.dart';
import 'package:harmony/models/artists/artist.dart';

// TODO: Replace placeholder with actual artist data

class ArtistCard extends StatelessWidget {
  final Artist artist;

  const ArtistCard({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
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
                  image: NetworkImage(
                    artist.images!.first.url!,
                  ),
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
                    fontSize: 17,
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
