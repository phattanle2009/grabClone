import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class ChallengesItem extends StatelessWidget {
  final String iconName;
  final String title;
  final String datetime;
  final String subtitle;

  ChallengesItem({
    required this.iconName,
    required this.title,
    required this.datetime,
    required this.subtitle,
  });

  Widget _config(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lighterGrey,
          width: 1.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppDimensions.smallestSize,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: AppDimensions.smallPadding,
              left: AppDimensions.smallPadding,
            ),
            child: Image.asset(
              iconName,
              width: AppDimensions.smallAvatarSize,
              height: AppDimensions.smallAvatarSize,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(AppDimensions.smallSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.smallBoldFont,
                  ),
                  AppDimensions.smallestHeightSpace,
                  Text(
                    datetime,
                    style: AppTextStyles.smallerMediumFont,
                  ),
                  AppDimensions.smallestHeightSpace,
                  Text(
                    subtitle,
                    style: AppTextStyles.smallerBoldFont.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
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
