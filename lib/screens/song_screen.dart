import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:harmony/components/cards/song_screen/track_album_card.dart';
import 'package:harmony/components/cards/song_screen/track_artists_card.dart';
import 'package:harmony/components/cards/song_screen/track_description_card.dart';
import 'package:harmony/components/cards/song_screen/track_length_card.dart';
import 'package:harmony/components/cards/song_screen/track_name_card.dart';
import 'package:harmony/components/cards/song_screen/track_open_externally_card.dart';
import 'package:harmony/components/cards/song_screen/track_popularity_card.dart';
import 'package:harmony/components/cards/song_screen/track_preview_card.dart';
import 'package:harmony/components/cards/song_screen/track_release_date_card.dart';
import 'package:harmony/components/navigation/song_appbar.dart';

class SongScreen extends ConsumerStatefulWidget {
  final String trackId;

  const SongScreen({
    super.key,
    required this.trackId,
  });

  @override
  ConsumerState<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends ConsumerState<SongScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SongAppBar(
                trackId: widget.trackId,
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  const TabBar(
                    tabs: [
                      Tab(text: 'Track'),
                      Tab(text: 'Lyrics'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              // TODO: Redo The Layout And Aspect Ratios Of The Cards
              MasonryGridView.custom(
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                padding: const EdgeInsets.all(20),
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                childrenDelegate: SliverChildListDelegate(
                  [
                    TrackNameCard(trackId: widget.trackId),
                    TrackArtistsCard(trackId: widget.trackId),
                    TrackDescriptionCard(trackId: widget.trackId),
                    TrackAlbumCard(trackId: widget.trackId),
                    TrackReleaseDateCard(trackId: widget.trackId),
                    TrackLengthCard(trackId: widget.trackId),
                    TrackPopularityCard(trackId: widget.trackId),
                    TrackPreviewCard(trackId: widget.trackId),
                    TrackOpenExternallyCard(trackId: widget.trackId),
                    // TODO: Implement More Cards
                  ],
                ),
              ),

              // TODO: Implement Lyrics Screen
              ListView(
                padding: const EdgeInsets.all(20),
                children: List.generate(
                  20,
                  (index) => Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 100,
                    color: Colors.primaries[index % Colors.primaries.length],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(child: tabBar);
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
