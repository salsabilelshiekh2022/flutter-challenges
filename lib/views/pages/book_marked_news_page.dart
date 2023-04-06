import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_challenges/controllers/book_mark_item_provider.dart';
import 'package:flutter_challenges/utils/assets.dart';
import 'package:flutter_challenges/views/widgets/book_marked_item.dart';
import 'package:flutter_challenges/views/widgets/custom_icon_button_appbar.dart';
import 'package:provider/provider.dart';

class BookMarkedNewsPage extends StatelessWidget {
  const BookMarkedNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BookMarkArticals>(context);
    final news = provider.bookMarkArticals;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: news.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      AppAssets.emptyImg,
                      width: double.infinity,
                      height: 400,
                      fit: BoxFit.cover,
                    ).animate().fade().scale(),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Empty',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    )
                        .animate()
                        .fadeIn() // uses `Animate.defaultDuration`
                        .scale() // inherits duration from fadeIn
                        .move(
                            delay: 300.ms,
                            duration:
                                600.ms) // runs after the above w/new duration

                    ,
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "You don't have any bookmark at this time ",
                    )
                        .animate()
                        .fadeIn() // uses `Animate.defaultDuration`
                        .scale() // inherits duration from fadeIn
                        .move(delay: 300.ms, duration: 600.ms),
                  ],
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Bookmark',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        InkWell(
                            onTap: () {},
                            child: CustomIconButtonAppBar(
                              iconName: Icons.search,
                              onTap: () {},
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    child: news.isEmpty
                        ? Container()
                        : Text('${news.length.toString()} Articles',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.w600)),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: news.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(
                          right: 12,
                          left: 12,
                          top: 12.0,
                        ),
                        child: BookMarkedItem(
                          bookMarkedItem: news[index],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
