import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/image.dart';

class RecentTransactionSection extends StatelessWidget {
  const RecentTransactionSection({super.key});

  Widget _config() {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 32, bottom: 50),
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
                  width: 70,
                  height: 70,
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