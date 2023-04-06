import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_challenges/models/news_model.dart';
import 'package:flutter_challenges/controllers/book_mark_item_provider.dart';
import 'package:flutter_challenges/views/widgets/custom_bottom_app_bar.dart';
import 'package:flutter_challenges/views/widgets/custom_button_icon_news_details.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class BuildSliverAppBar extends StatelessWidget {
  final String title;

  final String imgOfNew;
  final NewsModel newsModel;
  const BuildSliverAppBar(
      {super.key,
      required this.title,
      required this.imgOfNew,
      required this.newsModel});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BookMarkArticals>(context);
    return SliverAppBar(
      elevation: 1,
      automaticallyImplyLeading: false,
      toolbarHeight: 47,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      expandedHeight: 370,
      pinned: true,
      stretch: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: CustomBottomAppBar(
          newsModel: newsModel,
        ),
      ),
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              SizedBox(
                child: Image.network(
                  newsModel.imgUrl,
                  height: double.maxFinite,
                  width: double.maxFinite,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.black26,
                      Colors.black26,
                      Colors.black26,
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                top: 200,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(newsModel.category)
                              .animate()
                              .fadeIn() // uses `Animate.defaultDuration`
                              .scale() // inherits duration from fadeIn
                              .move(delay: 300.ms, duration: 600.ms),
                          backgroundColor: Colors.blue,
                          labelStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          newsModel.title,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.white),
                          maxLines: 2,
                          softWrap: true,
                        )
                            .animate()
                            .fadeIn() // uses `Animate.defaultDuration`
                            .scale() // inherits duration from fadeIn
                            .move(delay: 300.ms, duration: 600.ms),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            'Trending',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '●',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.white, fontSize: 10.sp),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            newsModel.date,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.white, fontSize: 10.sp),
                          )
                        ],
                      )
                          .animate()
                          .fadeIn() // uses `Animate.defaultDuration`
                          .scale() // inherits duration from fadeIn
                          .move(delay: 300.ms, duration: 600.ms),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      title: CustomButtonNewsDetails(
        icon: Icons.arrow_back,
        onPress: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        CustomButtonNewsDetails(
          onPress: () {
            provider.toggleBookMark(newsModel);
          },
          icon: provider.isExist(newsModel)
              ? Icons.bookmark_outlined
              : Icons.bookmark_outline,
        ),
        const SizedBox(
          width: 8,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: CustomButtonNewsDetails(
            icon: Icons.more_horiz,
          ),
        ),
      ],
    );
  }
}
