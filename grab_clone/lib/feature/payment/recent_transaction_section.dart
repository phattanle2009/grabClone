import 'package:flutter/material.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class RecentTransactionSection extends StatelessWidget {
  const RecentTransactionSection({super.key});

  Widget _config() {
    return Container(
      padding: EdgeInsets.only(
        left: AppDimensions.mediumSize,
        top: AppDimensions.mediumSize * 2,
        bottom: AppDimensions.customButtonHeight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent transactions",
            style: AppTextStyles.biggestBoldFont,
          ),
          AppDimensions.largestHeightSpace,
          Center(
            child: Column(
              children: [
                Image.asset(
                  AppImages.bill,
                  width: AppDimensions.bigAvatarSize,
                  height: AppDimensions.bigAvatarSize,
                ),
                AppDimensions.mediumHeightSpace,
                Text(
                  "There's no recent activity to show here.",
                  style: AppTextStyles.smallMediumFont.copyWith(
                    color: AppColors.lightGray,
                  ),
                ),
                AppDimensions.smallerHeightSpace,
                Text(
                  "See past transactions",
                  style: AppTextStyles.smallBoldFont.copyWith(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
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
