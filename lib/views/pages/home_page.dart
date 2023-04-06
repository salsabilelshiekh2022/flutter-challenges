import 'package:flutter/material.dart';
import 'package:flutter_challenges/models/news_model.dart';
import 'package:flutter_challenges/utils/assets.dart';
import 'package:flutter_challenges/views/widgets/carousel_item.dart';
import 'package:flutter_challenges/views/widgets/custom_carousel_slider.dart';
import 'package:flutter_challenges/views/widgets/custom_icon_button_appbar.dart';
import 'package:flutter_challenges/views/widgets/header_of_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_challenges/views/widgets/recommendation_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Widget> carouselItems = [
      CarouselItem(
        carouselModel: dummyBreakingNews[0],
      ),
      CarouselItem(
        carouselModel: dummyBreakingNews[1],
      ),
      CarouselItem(
        carouselModel: dummyBreakingNews[2],
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    CustomIconButtonAppBar(
                      iconName: Icons.menu,
                    ),
                    Spacer(),
                    CustomIconButtonAppBar(
                      iconName: Icons.search,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    CustomIconButtonAppBar(
                      iconName: Icons.notifications_outlined,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const BuildHeaderOfList(
                title: 'Breaking News',
              ),
              const SizedBox(height: 16.0),
              const CustomCarouselSlider(),
              SingleChildScrollView(
                child: Transform.translate(
                  offset: const Offset(0, -25),
                  child: Column(
                    children: [
                      const BuildHeaderOfList(
                        title: 'Recommendation',
                      ),
                      SizedBox(
                        height: 500.h,
                        child: ListView.builder(
                          itemCount: dummyRecommendationNews.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(
                                right: 12, left: 24, top: 12.0, bottom: 12),
                            child: RecommendationItem(
                              recommendationNew: dummyRecommendationNews[index],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
