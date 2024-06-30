import 'package:flutter/material.dart';

// TODO: Replace placeholder with actual artist data

class ArtistCard extends StatelessWidget {
  const ArtistCard({super.key});

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
                  image: const NetworkImage(
                    "https://i.scdn.co/image/ab67616d00001e0226d64b6150aa3d9b6b67d857",
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Childish Gambino",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
