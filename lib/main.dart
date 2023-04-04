import 'package:flutter/material.dart';
import 'package:flutter_challenges/utils/routers.dart';
import 'package:flutter_challenges/utils/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const FlutterChallenge());
}

class FlutterChallenge extends StatelessWidget {
  const FlutterChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                appBarTheme:
                    const AppBarTheme(color: Colors.white, elevation: 0)),
            onGenerateRoute: onGenerate,
            initialRoute: AppRoutes.bottomNavbarRoute,
          );
        });
  }
}
