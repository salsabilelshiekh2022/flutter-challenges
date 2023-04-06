import 'package:flutter_animate/flutter_animate.dart';

import '../../../models/news_model.dart';
import 'package:flutter/material.dart';

class ContentView extends StatelessWidget {
  const ContentView({
    super.key,
    required this.newsModel,
  });

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Text(
            newsModel.content.join('\n\n'),
            style: const TextStyle(height: 1.5),
          )
              .animate()
              .fadeIn() // uses `Animate.defaultDuration`
              .scale() // inherits duration from fadeIn
              .move(delay: 300.ms, duration: 600.ms),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
