import 'package:flutter_challenges/utils/assets.dart';

class NewsModel {
  final String id;
  final String title;
  final String autherName;
  final String autherImg;
  final String channel;
  final String category;
  final String imgUrl;
  final String date;

  NewsModel({
    required this.id,
    required this.title,
    required this.channel,
    required this.autherName,
    required this.autherImg,
    this.category = 'Other',
    required this.imgUrl,
    required this.date,
  }); // change it later
}

List<NewsModel> dummyBreakingNews = [
  NewsModel(
      id: '1',
      title: 'Alexandria wears modified helmet races',
      channel: 'CNN Indonesia',
      autherName: 'McKindney',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.carouselHomePageAssets1,
      date: '6 hours ago'),
  NewsModel(
      id: '2',
      title: 'Alexandria wears modified helmet races',
      channel: 'BBC',
      autherName: 'Rosemary',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.carouselHomePageAssets1,
      date: '6 hours ago'),
  NewsModel(
      id: '3',
      title: 'Alexandria wears modified helmet races',
      channel: 'National',
      autherName: 'McKindney',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.carouselHomePageAssets1,
      date: '6 hours ago'),
  NewsModel(
      id: '4',
      title: 'Alexandria wears modified helmet races',
      channel: 'CNN',
      autherName: 'Rosemary',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.carouselHomePageAssets1,
      date: '6 hours ago'),
];

List<NewsModel> dummyRecommendationNews = [
  NewsModel(
      id: '1',
      title: 'What Training Do Vollyball Players Need?',
      autherName: 'McKindney',
      category: 'Sports',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.tempBreakingNewImage1,
      channel: 'CNN',
      date: 'Feb27,2023'),
  NewsModel(
      id: '2',
      title: 'Secondary school places: When do parents find out?',
      category: 'Education',
      autherName: 'Rosemary',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.tempBreakingNewImage3,
      channel: 'BBC',
      date: 'Feb28,2023'),
  NewsModel(
      id: '1',
      title: 'What Training Do Vollyball Players Need?',
      autherName: 'McKindney',
      category: 'Sports',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.tempBreakingNewImage1,
      channel: 'Notional',
      date: 'Feb27,2023'),
  NewsModel(
      id: '2',
      title: 'Secondary school places: When do parents find out?',
      category: 'Education',
      autherName: 'Rosemary',
      channel: 'CNN',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.tempBreakingNewImage3,
      date: 'Feb28,2023'),
];
