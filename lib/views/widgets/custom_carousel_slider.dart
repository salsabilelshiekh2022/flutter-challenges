import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenges/models/news_model.dart';
import 'package:flutter_challenges/views/widgets/carousel_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  final _controller = CarouselController();
  int _current = 0;
  List<Widget> carouselItems = [
    CarouselItem(
      carouselModel: dummyBreakingNews[0],
    ),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: carouselItems,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              height: 240,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Transform.translate(
          offset: const Offset(0, -30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: carouselItems.asMap().entries.map((entry) {
              return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: _current == entry.key ? 30.0 : 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        borderRadius: _current == entry.key
                            ? BorderRadius.circular(8.0)
                            : null,
                        shape: _current == entry.key
                            ? BoxShape.rectangle
                            : BoxShape.circle,
                        color: _current == entry.key
                            ? Theme.of(context).primaryColor
                            : Colors.grey.withOpacity(.3)),
                  ));
            }).toList(),
          ),
        ),
      ],
    );
  }
}
