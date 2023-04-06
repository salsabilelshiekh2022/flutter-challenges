import 'package:flutter/material.dart';
import 'package:flutter_challenges/models/news_model.dart';
import 'package:flutter_challenges/views/widgets/build_sliver_appBar.dart';
import 'package:flutter_challenges/views/widgets/content_view.dart';

class NewDetails extends StatelessWidget {
  final NewsModel newsModel;
  const NewDetails({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          BuildSliverAppBar(
            title: newsModel.title,
            imgOfNew: newsModel.imgUrl,
            newsModel: newsModel,
          ),
          SliverToBoxAdapter(
            child: ContentView(newsModel: newsModel),
          )
        ],
      ),
    );
  }
}
