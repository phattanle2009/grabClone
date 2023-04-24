import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/sections/items/circular_collection_item.dart';

class CollectionSection extends StatelessWidget {
  Widget _configCollection() {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppDimensions.mediumSize),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CircularCollectionItem(
              title: "Food",
              imageName: AppIcons.food,
              onPressed: () {},
            ),
            AppDimensions.mediumWidthSpace,
            CircularCollectionItem(
              title: "Bike",
              imageName: AppIcons.bike,
              onPressed: () {},
            ),
            AppDimensions.mediumWidthSpace,
            CircularCollectionItem(
              title: "Car",
              imageName: AppIcons.car,
              onPressed: () {},
            ),
            AppDimensions.mediumWidthSpace,
            CircularCollectionItem(
              title: "Express",
              imageName: AppIcons.express,
              onPressed: () {},
            ),
            AppDimensions.mediumWidthSpace,
            CircularCollectionItem(
              title: "Mart",
              imageName: AppIcons.vegetable,
              onPressed: () {},
            ),
            AppDimensions.mediumWidthSpace,
            CircularCollectionItem(
              title: "Subscription",
              imageName: AppIcons.subcriptions,
              onPressed: () {},
            ),
            AppDimensions.mediumWidthSpace,
            CircularCollectionItem(
              title: "Offers",
              imageName: AppIcons.offer,
              onPressed: () {},
            ),
            AppDimensions.mediumWidthSpace,
            CircularCollectionItem(
              title: "Reward",
              imageName: AppIcons.reward,
              onPressed: () {},
            ),
            AppDimensions.mediumWidthSpace,
            CircularCollectionItem(
              title: "Top UP",
              imageName: AppIcons.topup,
              onPressed: () {},
            ),
            AppDimensions.mediumWidthSpace,
            CircularCollectionItem(
              title: "Challenges",
              imageName: AppIcons.challenge,
              onPressed: () {},
            ),
            AppDimensions.mediumWidthSpace,
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _configCollection();
  }
}
