import 'package:flutter/material.dart';
import 'package:flutter_challenges/models/breaking_news_model.dart';
import 'package:flutter_challenges/models/recommendation_news_model.dart';
import 'package:flutter_challenges/views/widgets/carousel_item.dart';
import 'package:flutter_challenges/views/widgets/custom_icon_button_appbar.dart';
import 'package:flutter_challenges/views/widgets/header_of_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_challenges/views/widgets/recommendation_item.dart';

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
        carouselModel: dummyBreakingNews[0],
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
              CarouselSlider(
                items: carouselItems,
                options: CarouselOptions(
                  height: 400,
                  enlargeCenterPage: true,
                  autoPlay: false,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              SingleChildScrollView(
                child: Transform.translate(
                  offset: const Offset(0, -50),
                  child: Column(
                    children: [
                      const BuildHeaderOfList(
                        title: 'Recommendation',
                      ),
                      SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount: dummyRecommendationNews.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12.0),
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
