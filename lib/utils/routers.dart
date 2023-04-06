import 'package:flutter/cupertino.dart';
import 'package:flutter_challenges/models/news_model.dart';
import 'package:flutter_challenges/utils/routes.dart';
import 'package:flutter_challenges/views/pages/book_marked_news_page.dart';
import 'package:flutter_challenges/views/pages/bottom_nav_bar.dart';
import 'package:flutter_challenges/views/pages/home_page.dart';
import 'package:flutter_challenges/views/pages/new_details_page.dart';

import '../views/pages/landing_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.homePageRoute:
      return CupertinoPageRoute(
          builder: (_) => const HomePage(), settings: settings);
    case AppRoutes.newDetailRoute:
      final newsModel = settings.arguments as NewsModel;
      return CupertinoPageRoute(
          builder: (_) => NewDetails(newsModel: newsModel), settings: settings);
    case AppRoutes.landingPageRoute:
      return CupertinoPageRoute(
          builder: (_) => const LandingPage(), settings: settings);
    case AppRoutes.bookMarkedPageRoute:
      return CupertinoPageRoute(
          builder: (_) => const BookMarkedNewsPage(), settings: settings);

    case AppRoutes.bottomNavbarRoute:
      return CupertinoPageRoute(
          builder: (_) => const BottomNavBar(), settings: settings);
    default:
      return CupertinoPageRoute(
          builder: (_) => const HomePage(), settings: settings);
  }
}
