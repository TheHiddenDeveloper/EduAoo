import 'package:flutter/material.dart';
import '../widgets/video_section.dart';
import '../widgets/articles_section.dart';
import '../widgets/topics_section.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const VideoSection(),
            ArticlesSection(),
            TopicsSection(),
          ],
        ),
      ),
    );
  }
}
