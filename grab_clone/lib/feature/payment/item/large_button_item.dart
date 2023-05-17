import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class LargeButtonItem extends StatelessWidget {
  const LargeButtonItem({super.key});

  Widget _config() {
    return Container(
      padding: EdgeInsets.all(AppDimensions.mediumSize),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimensions.smallBorder),
        ),
        color: AppColors.mediumGreen,
      ),
      child: Row(
        children: [
          SizedBox.square(
            dimension: AppDimensions.largeSize,
            child: Image.asset(
              AppIcons.wallet,
              color: Colors.white,
            ),
          ),
          AppDimensions.mediumWidthSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add a card",
                  style: AppTextStyles.smallBoldFont.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Go cashless with a credit or debit card",
                  style: AppTextStyles.smallMediumFont.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config();
  }
}
