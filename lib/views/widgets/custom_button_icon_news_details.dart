import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomButtonNewsDetails extends StatelessWidget {
  const CustomButtonNewsDetails({
    super.key,
    required this.icon,
    this.onPress,
  });
  final IconData icon;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Colors.white10.withOpacity(0.1),
                Colors.white10.withOpacity(0.2),
                Colors.white24.withOpacity(0.2),
                Colors.white10.withOpacity(0.3),
                Colors.black12.withOpacity(0.5),
              ],
            )),
        child: Stack(
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 15,
                  sigmaY: 15,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(icon),
            )
          ],
        ),
      ),
    );
  }
}
