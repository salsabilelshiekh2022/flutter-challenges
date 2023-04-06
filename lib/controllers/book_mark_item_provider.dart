import 'package:flutter/material.dart';
import 'package:flutter_challenges/models/news_model.dart';

class BookMarkArticals with ChangeNotifier {
  List<NewsModel> _bookMarkArticals = [];
  List<NewsModel> get bookMarkArticals => _bookMarkArticals;
  int _totalBookMarkArticals = 0;

  void toggleBookMark(NewsModel newsModel) {
    final isExist = _bookMarkArticals.contains(newsModel);
    if (isExist) {
      _bookMarkArticals.remove(newsModel);
    } else {
      _bookMarkArticals.add(newsModel);
    }

    notifyListeners();
  }

  bool isExist(NewsModel newsModel) {
    final isExist = _bookMarkArticals.contains(newsModel);
    return isExist;
  }

  int get count {
    return _bookMarkArticals.length;
  }

  void delete(NewsModel newsModel) {
    final isExist = _bookMarkArticals.contains(newsModel);
    if (isExist) {
      _bookMarkArticals.remove(newsModel);
      notifyListeners();
    }
  }
}
