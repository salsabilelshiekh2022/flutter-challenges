import 'package:flutter/material.dart';

class CustomIconButtonAppBar extends StatelessWidget {
  const CustomIconButtonAppBar({super.key, this.onTap, required this.iconName});
  final VoidCallback? onTap;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.blue.withOpacity(.08),
        ),
        child: IconButton(
          onPressed: onTap,
          icon: Icon(
            iconName,
            color: Colors.black,
            size: 25,
          ),
        ),
      ),
    );
  }
}
