import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/feature/home/sections/items/card_collection_item.dart';

class CardCollectionSection extends StatelessWidget {
  Widget _config() {
    return Container(
      height: 92,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        children: [
          CardCollectionItem(
            title: "Activate",
            subTitle: "Moca",
            imageName: AppIcons.paypal,
          ),
          AppDimensions.mediumWidthSpace,
          CardCollectionItem(
            title: "Account",
            subTitle: "Verify Email",
            imageName: AppIcons.userColorful,
          ),
          AppDimensions.mediumWidthSpace,
          CardCollectionItem(
            title: "Point",
            subTitle: "0",
            imageName: AppIcons.dollar,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config();
  }
}
