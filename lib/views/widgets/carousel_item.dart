import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_challenges/models/news_model.dart';
import 'package:flutter_challenges/utils/routes.dart';

class CarouselItem extends StatelessWidget {
  final NewsModel carouselModel;
  const CarouselItem({super.key, required this.carouselModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context, rootNavigator: true)
          .pushNamed(AppRoutes.newDetailRoute, arguments: carouselModel),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    )
                        .animate()
                        .fadeIn() // uses `Animate.defaultDuration`
                        .scale() // inherits duration from fadeIn
                        .move(delay: 300.ms, duration: 600.ms),
                  ),
                  const SizedBox(
                    height: 63,
                  ),
                  Text(
                    '${carouselModel.channel} • ${carouselModel.date}',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )
                      .animate()
                      .fadeIn() // uses `Animate.defaultDuration`
                      .scale() // inherits duration from fadeIn
                      .move(delay: 300.ms, duration: 600.ms),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(carouselModel.title,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                      .animate()
                      .fadeIn() // uses `Animate.defaultDuration`
                      .scale() // inherits duration from fadeIn
                      .move(delay: 300.ms, duration: 600.ms),
                ],
              ),
            ),
          ],
        )
      ]),
    )
        .animate()
        .fadeIn() // uses `Animate.defaultDuration`
        .scale() // inherits duration from fadeIn
        .move(delay: 300.ms, duration: 600.ms);
  }
}
