import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_challenges/models/news_model.dart';

class CustomBottomAppBar extends StatelessWidget {
  final NewsModel newsModel;
  const CustomBottomAppBar({
    super.key,
    required this.newsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 4),
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(newsModel.channelImg),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(newsModel.channel),
          const SizedBox(
            width: 4,
          ),
          Icon(
            Icons.verified,
            color: Theme.of(context).colorScheme.primary,
            size: 18,
          )
        ],
      )
          .animate()
          .fadeIn() // uses `Animate.defaultDuration`
          .scale() // inherits duration from fadeIn
          .move(delay: 300.ms, duration: 600.ms),
    );
  }
}
