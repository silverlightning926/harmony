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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: StaggeredGrid.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    axisDirection: AxisDirection.down,
                    children: [
                      StaggeredGridTile.fit(
                        crossAxisCellCount: 2,
                        child: TrackNameCard(trackId: widget.trackId),
                      ),
                      StaggeredGridTile.fit(
                        crossAxisCellCount: 2,
                        child: TrackArtistsCard(trackId: widget.trackId),
                      ),
                      StaggeredGridTile.fit(
                        crossAxisCellCount: 2,
                        child: TrackDescriptionCard(trackId: widget.trackId),
                      ),
                      StaggeredGridTile.fit(
                        crossAxisCellCount: 1,
                        child: TrackAlbumCard(trackId: widget.trackId),
                      ),
                      StaggeredGridTile.fit(
                        crossAxisCellCount: 1,
                        child: TrackReleaseDateCard(trackId: widget.trackId),
                      ),
                      StaggeredGridTile.fit(
                        crossAxisCellCount: 1,
                        child: TrackLengthCard(trackId: widget.trackId),
                      ),
                      StaggeredGridTile.fit(
                        crossAxisCellCount: 1,
                        child: TrackPopularityCard(trackId: widget.trackId),
                      ),
                      StaggeredGridTile.fit(
                        crossAxisCellCount: 1,
                        child: TrackPreviewCard(trackId: widget.trackId),
                      ),
                      StaggeredGridTile.fit(
                        crossAxisCellCount: 1,
                        child: TrackOpenExternallyCard(trackId: widget.trackId),
                      ),
                      // TODO: Implement More Cards
                    ],
                  ),
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
