import 'package:flutter/material.dart';

class BuildHeaderOfList extends StatelessWidget {
  const BuildHeaderOfList({super.key, required this.title, this.onTap});
  final String title;

  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              InkWell(
                onTap: onTap,
                child: Text(
                  'View All',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
