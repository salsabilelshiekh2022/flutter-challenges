import 'package:flutter/material.dart';
import 'package:flutter_challenges/models/recommendation_news_model.dart';

class RecommendationItem extends StatelessWidget {
  final RecommendationNewsModel recommendationNew;
  const RecommendationItem({super.key, required this.recommendationNew});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              recommendationNew.imgUrl,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recommendationNew.category,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.grey,
                    ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: 170,
                child: Text(
                  recommendationNew.title,
                  maxLines: 4,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      recommendationNew.autherImg,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    recommendationNew.autherName,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    recommendationNew.date,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
