import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_challenges/controllers/book_mark_item_provider.dart';
import 'package:flutter_challenges/models/news_model.dart';
import 'package:provider/provider.dart';

class CustomAlertDialog extends StatelessWidget {
  final NewsModel bookMarkedItem;
  const CustomAlertDialog({super.key, required this.bookMarkedItem});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BookMarkArticals>(context);
    return AlertDialog(
      title: Text(
        'Delete Article',
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colors.redAccent),
      )
          .animate()
          .fadeIn() // uses `Animate.defaultDuration`
          .scale() // inherits duration from fadeIn
          .move(delay: 300.ms, duration: 600.ms),
      content: const Text(
              textAlign: TextAlign.center,
              'Are you sure you want to delete this article?')
          .animate()
          .fadeIn() // uses `Animate.defaultDuration`
          .scale() // inherits duration from fadeIn
          .move(delay: 300.ms, duration: 600.ms),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 90,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text('Cancled',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.blue)),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              InkWell(
                onTap: () {
                  provider.delete(bookMarkedItem);
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 90,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.7),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text('yes, delete',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.white)),
                  ),
                ),
              ),
            ],
          )..animate()
              .fadeIn() // uses `Animate.defaultDuration`
              .scale() // inherits duration from fadeIn
              .move(delay: 300.ms, duration: 600.ms),
        )
      ],
    );
  }
}
