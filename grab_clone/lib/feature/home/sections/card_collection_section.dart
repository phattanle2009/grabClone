import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/sections/items/card_collection_item.dart';

class CardCollectionSection extends StatelessWidget {
  final Function onTapPoint;
  final Function onTapVerify;
  final Function onTapPayment;

  CardCollectionSection({
    required this.onTapPoint,
    required this.onTapVerify,
    required this.onTapPayment,
  });

  Widget _config() {
    return Container(
      height: 92,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: AppDimensions.mediumSize,
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.mediumSize,
        ),
        scrollDirection: Axis.horizontal,
        children: [
          CardCollectionItem(
            title: "Activate",
            subTitle: "Moca",
            imageName: AppIcons.paypal,
            onTap: () => onTapPayment(),
          ),
          AppDimensions.mediumWidthSpace,
          CardCollectionItem(
            title: "Account",
            subTitle: "Verify Email",
            imageName: AppIcons.userColorful,
            onTap: () => onTapVerify(),
          ),
          AppDimensions.mediumWidthSpace,
          CardCollectionItem(
            title: "Point",
            subTitle: "0",
            imageName: AppIcons.dollar,
            onTap: () => onTapPoint(),
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
