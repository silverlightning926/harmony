import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/navigation/song_appbar.dart';
import 'package:harmony/providers/spotify_providers.dart';
import 'package:sliver_tools/sliver_tools.dart';

class SongScreen extends ConsumerWidget {
  final String trackId;

  const SongScreen({
    super.key,
    required this.trackId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: Implement UI based on track data
    final track = ref.watch(fetchTrackProvider(trackId));

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SongAppBar(trackId: trackId),
            SliverPersistentHeader(
              floating: false,
              pinned: true,
              delegate: _SliverAppBarDelegate(
                const TabBar(
                  padding: EdgeInsets.zero,
                  tabs: [
                    Tab(text: 'Info'),
                    Tab(text: 'Lyrics'),
                  ],
                ),
              ),
            ),
            SliverClip(
              child: SliverFillViewport(
                delegate: SliverChildListDelegate(
                  [
                    const TabBarView(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(
                            child: Text('Info'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(
                            child: Text('Lyrics'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
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
    return tabBar;
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
