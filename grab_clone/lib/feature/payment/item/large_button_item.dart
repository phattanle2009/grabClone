import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

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
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: AppDimensions.smallFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Go cashless with a credit or debit card",
                  style: TextStyle(
                    fontSize: AppDimensions.smallerFontSize,
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
