import 'package:flutter/material.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

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
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
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
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightGray,
                  ),
                ),
                AppDimensions.smallerHeightSpace,
                Text(
                  "See past transactions",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
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
