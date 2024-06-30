import 'package:flutter/material.dart';
import 'package:harmony/components/navigation/subtitle_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SubtitleAppBar(),
    );
  }
}
