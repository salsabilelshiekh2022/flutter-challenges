import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_challenges/models/news_model.dart';
import 'package:flutter_challenges/utils/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationItem extends StatelessWidget {
  final NewsModel recommendationNew;
  const RecommendationItem({super.key, required this.recommendationNew});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context, rootNavigator: true)
          .pushNamed(AppRoutes.newDetailRoute, arguments: recommendationNew),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                recommendationNew.imgUrl,
                width: 120.w,
                height: 120.h,
                fit: BoxFit.cover,
              ) // uses `Animate.defaultDuration`

              ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recommendationNew.category,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.grey,
                      ),
                )..animate()
                    .fadeIn() // uses `Animate.defaultDuration`
                    .scale() // inherits duration from fadeIn
                    .move(delay: 300.ms, duration: 600.ms),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  recommendationNew.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                )
                    .animate()
                    .fadeIn() // uses `Animate.defaultDuration`
                    .scale() // inherits duration from fadeIn
                    .move(delay: 300.ms, duration: 600.ms),
                SizedBox(
                  height: 32.0.h,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        recommendationNew.autherImg,
                        width: 30,
                        height: 30,
                      ),
                    )
                        .animate()
                        .fadeIn() // uses `Animate.defaultDuration`
                        .scale() // inherits duration from fadeIn
                        .move(delay: 300.ms, duration: 600.ms),
                    const SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      recommendationNew.autherName,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey),
                    )
                        .animate()
                        .fadeIn() // uses `Animate.defaultDuration`
                        .scale() // inherits duration from fadeIn
                        .move(delay: 300.ms, duration: 600.ms),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      recommendationNew.date,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey, overflow: TextOverflow.ellipsis),
                    )
                        .animate()
                        .fadeIn() // uses `Animate.defaultDuration`
                        .scale() // inherits duration from fadeIn
                        .move(delay: 300.ms, duration: 600.ms)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
