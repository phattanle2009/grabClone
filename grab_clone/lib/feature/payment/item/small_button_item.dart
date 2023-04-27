import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class SmallButtonItem extends StatelessWidget {
  String title;
  String imageName;

  SmallButtonItem({
    required this.title,
    required this.imageName,
  });

  Widget _config() {
    return Container(
      height: AppDimensions.smallAvatarSize,
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(AppDimensions.smallerPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimensions.smallerBorder),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: AppDimensions.smallerSize,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            imageName,
            color: AppColors.darkGeen,
            width: AppDimensions.imageMediumSize,
            height: AppDimensions.imageMediumSize,
          ),
          AppDimensions.mediumWidthSpace,
          Text(
            title,
            maxLines: 1,
            style: AppTextStyles.smallMediumFont,
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
