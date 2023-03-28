import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_challenges/models/breaking_news_model.dart';

class CarouselItem extends StatelessWidget {
  final BreakingNewsModel carouselModel;
  const CarouselItem({super.key, required this.carouselModel});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.network(
                carouselModel.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6.0),
                    width: 80,
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
                    height: 150,
                  ),
                  Row(
                    children: [
                      Text(
                        carouselModel.channel,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        carouselModel.date,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    carouselModel.title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
