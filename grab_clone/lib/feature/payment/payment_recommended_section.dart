import 'package:flutter/material.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/payment/item/card_recommended_item.dart';

class PaymentRecommendedSection extends StatelessWidget {
  const PaymentRecommendedSection({super.key});

  Widget _config(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommended",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          AppDimensions.largeHeightSpace,
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                left: AppDimensions.smallestSize,
              ),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CardRecommendedItem(
                    title: "Stay connected with prepaid top-up",
                    imageName: AppImages.bill,
                    colors: [AppColors.lightPurple, AppColors.lighterPurple],
                  ),
                  AppDimensions.smallWidthSpace,
                  CardRecommendedItem(
                    title: "Pay you bills anywhere",
                    imageName: AppImages.key,
                    colors: [AppColors.lightBlue, AppColors.lighterBlue],
                  ),
                  AppDimensions.smallWidthSpace,
                  CardRecommendedItem(
                    title: "Pay you bills anywhere",
                    imageName: AppImages.activityEmpty,
                    colors: [AppColors.lighterGrey, AppColors.lightGray],
                  ),
                ],
              ),
            ),
          ),
          AppDimensions.mediumHeightSpace,
          Container(
            height: 1,
            color: AppColors.lighterGrey,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config(context);
  }
}
