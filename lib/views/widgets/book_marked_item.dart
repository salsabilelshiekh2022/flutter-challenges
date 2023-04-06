import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_challenges/models/news_model.dart';
import 'package:flutter_challenges/utils/routes.dart';
import 'package:flutter_challenges/views/widgets/custom_alert_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../controllers/book_mark_item_provider.dart';

class BookMarkedItem extends StatelessWidget {
  final NewsModel bookMarkedItem;
  const BookMarkedItem({super.key, required this.bookMarkedItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context, rootNavigator: true)
          .pushNamed(AppRoutes.newDetailRoute, arguments: bookMarkedItem),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              bookMarkedItem.imgUrl,
              width: 120.w,
              height: 120.h,
              fit: BoxFit.cover,
            )
                .animate()
                .fadeIn() // uses `Animate.defaultDuration`
                .scale() // inherits duration from fadeIn
                .move(delay: 300.ms, duration: 600.ms),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookMarkedItem.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                )
                    .animate()
                    .fadeIn() // uses `Animate.defaultDuration`
                    .scale() // inherits duration from fadeIn
                    .move(delay: 300.ms, duration: 600.ms),
                SizedBox(
                  height: 20.0.h,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.5),
                      child: Image.network(
                        bookMarkedItem.autherImg,
                        width: 25,
                        height: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      bookMarkedItem.autherName,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                )
                    .animate()
                    .fadeIn() // uses `Animate.defaultDuration`
                    .scale() // inherits duration from fadeIn
                    .move(delay: 300.ms, duration: 600.ms),
                Row(
                  children: [
                    Text(
                      '   8 days ago',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey, overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    IconButton(
                      icon: const Icon(Icons.bookmark),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return CustomAlertDialog(
                                bookMarkedItem: bookMarkedItem,
                              );
                            });
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                )
                    .animate()
                    .fadeIn() // uses `Animate.defaultDuration`
                    .scale() // inherits duration from fadeIn
                    .move(delay: 300.ms, duration: 600.ms),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
