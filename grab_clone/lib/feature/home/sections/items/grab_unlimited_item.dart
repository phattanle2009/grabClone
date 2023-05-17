import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class GrabUnlimitedItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String backgroundImage;

  GrabUnlimitedItem({
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
  });

  Widget _config(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2 - 16 - 8;
    return Container(
      width: width,
      height: width + 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimensions.smallBorder),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: width,
            child: Image.asset(
              backgroundImage,
              width: width,
              height: width,
            ),
          ),
          AppDimensions.smallHeightSpace,
          Text(
            title,
            maxLines: 2,
            style: AppTextStyles.smallMediumFont,
          ),
          Text(
            subtitle,
            style: AppTextStyles.smallestMediumFont.copyWith(
              color: AppColors.lightGray,
            ),
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
