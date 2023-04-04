import 'package:flutter/material.dart';
import 'package:flutter_challenges/models/breaking_news_model.dart';

class CarouselItem extends StatelessWidget {
  final BreakingNewsModel carouselModel;
  const CarouselItem({super.key, required this.carouselModel});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: Image.network(
              carouselModel.imgUrl,
              width: 1000.0,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 16.0, left: 24, right: 24, bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(6.0),
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.blue),
                  child: Text(
                    carouselModel.category,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 63,
                ),
                Text(
                  '${carouselModel.channel} • ${carouselModel.date}',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(carouselModel.title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
