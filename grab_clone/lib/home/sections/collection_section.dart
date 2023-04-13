import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/home/sections/items/circular_collection_item.dart';

class CollectionSection extends StatelessWidget {
  Widget _configCollection() {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CircularCollectionItem(
              title: "Food",
              imageName: AppIcons.food,
              onPressed: () {},
            ),
            AppDimensions.largeWidthSpace,
            CircularCollectionItem(
              title: "Bike",
              imageName: AppIcons.bike,
              onPressed: () {},
            ),
            AppDimensions.largeWidthSpace,
            CircularCollectionItem(
              title: "Car",
              imageName: AppIcons.car,
              onPressed: () {},
            ),
            AppDimensions.largeWidthSpace,
            CircularCollectionItem(
              title: "Express",
              imageName: AppIcons.express,
              onPressed: () {},
            ),
            AppDimensions.largeWidthSpace,
            CircularCollectionItem(
              title: "Mart",
              imageName: AppIcons.vegetable,
              onPressed: () {},
            ),
            AppDimensions.largeWidthSpace,
            CircularCollectionItem(
              title: "Subscription",
              imageName: AppIcons.subcriptions,
              onPressed: () {},
            ),
            AppDimensions.largeWidthSpace,
            CircularCollectionItem(
              title: "Offers",
              imageName: AppIcons.offer,
              onPressed: () {},
            ),
            AppDimensions.largeWidthSpace,
            CircularCollectionItem(
              title: "Reward",
              imageName: AppIcons.reward,
              onPressed: () {},
            ),
            AppDimensions.largeWidthSpace,
            CircularCollectionItem(
              title: "Top UP",
              imageName: AppIcons.topup,
              onPressed: () {},
            ),
            AppDimensions.largeWidthSpace,
            CircularCollectionItem(
              title: "Challenges",
              imageName: AppIcons.challenge,
              onPressed: () {},
            ),
            AppDimensions.largeWidthSpace,
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
