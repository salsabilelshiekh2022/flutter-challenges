import 'package:flutter/cupertino.dart';
import 'package:flutter_challenges/utils/routes.dart';
import 'package:flutter_challenges/views/pages/bottom_nav_bar.dart';
import 'package:flutter_challenges/views/pages/home_page.dart';

import '../views/pages/landing_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.homePageRoute:
      return CupertinoPageRoute(
          builder: (_) => const HomePage(), settings: settings);
    case AppRoutes.landingPageRoute:
      return CupertinoPageRoute(
          builder: (_) => const LandingPage(), settings: settings);

    case AppRoutes.bottomNavbarRoute:
      return CupertinoPageRoute(
          builder: (_) => const BottomNavBar(), settings: settings);
    default:
      return CupertinoPageRoute(
          builder: (_) => const HomePage(), settings: settings);
  }
}
