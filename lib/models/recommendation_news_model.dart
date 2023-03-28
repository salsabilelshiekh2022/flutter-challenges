import 'package:flutter/material.dart';
import 'package:flutter_challenges/utils/assets.dart';

class RecommendationNewsModel {
  final String id;
  final String title;
  final String autherName;
  final String autherImg;
  final String category;
  final String imgUrl;
  final String date;

  RecommendationNewsModel({
    required this.id,
    required this.title,
    required this.autherName,
    required this.autherImg,
    this.category = 'Other',
    required this.imgUrl,
    required this.date,
  });
}

List<RecommendationNewsModel> dummyRecommendationNews = [
  RecommendationNewsModel(
      id: '1',
      title: 'What Training Do Vollyball Players Need?',
      autherName: 'McKindney',
      category: 'Sports',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.tempBreakingNewImage1,
      date: 'Feb27,2023'),
  RecommendationNewsModel(
      id: '2',
      title: 'Secondary school places: When do parents find out?',
      category: 'Education',
      autherName: 'Rosemary',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.tempBreakingNewImage3,
      date: 'Feb28,2023'),
  RecommendationNewsModel(
      id: '1',
      title: 'What Training Do Vollyball Players Need?',
      autherName: 'McKindney',
      category: 'Sports',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.tempBreakingNewImage1,
      date: 'Feb27,2023'),
  RecommendationNewsModel(
      id: '2',
      title: 'Secondary school places: When do parents find out?',
      category: 'Education',
      autherName: 'Rosemary',
      autherImg: AppAssets.carouselHomePageAssets1,
      imgUrl: AppAssets.tempBreakingNewImage3,
      date: 'Feb28,2023'),
];
