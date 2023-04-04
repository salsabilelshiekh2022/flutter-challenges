import 'package:flutter_challenges/utils/assets.dart';

class BreakingNewsModel {
  final String id;
  final String title;
  final String channel;
  final String category;
  final String imgUrl;
  final String date;

  BreakingNewsModel({
    required this.id,
    required this.title,
    required this.channel,
    this.category = 'Other',
    required this.imgUrl,
    required this.date,
  }); // change it later
}

List<BreakingNewsModel> dummyBreakingNews = [
  BreakingNewsModel(
      id: '1',
      title: 'Alexandria wears modified helmet races',
      channel: 'CNN Indonesia',
      imgUrl: AppAssets.carouselHomePageAssets1,
      date: '6 hours ago'),
  BreakingNewsModel(
      id: '2',
      title: 'Alexandria wears modified helmet races',
      channel: 'BBC',
      imgUrl: AppAssets.carouselHomePageAssets1,
      date: '6 hours ago'),
  BreakingNewsModel(
      id: '3',
      title: 'Alexandria wears modified helmet races',
      channel: 'National',
      imgUrl: AppAssets.carouselHomePageAssets1,
      date: '6 hours ago'),
  BreakingNewsModel(
      id: '4',
      title: 'Alexandria wears modified helmet races',
      channel: 'CNN',
      imgUrl: AppAssets.carouselHomePageAssets1,
      date: '6 hours ago'),
];
