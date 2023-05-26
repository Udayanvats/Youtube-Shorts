import 'package:flutter/material.dart';
import 'package:grotask/data.dart';
import 'package:grotask/widgets/appbar.dart';
import 'package:grotask/widgets/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              final video = videos[index];
              return VideoCard(video: video);
            },
            childCount: videos.length,
          ))
        ],
      ),
    );
  }
}
