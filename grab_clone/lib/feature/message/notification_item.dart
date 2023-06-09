import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class NotificationItems extends StatelessWidget {
  final String title;
  final String subtitle;
  final String datetime;
  final bool asRead;

  NotificationItems({
    required this.title,
    required this.subtitle,
    required this.datetime,
    required this.asRead,
  });

  Widget _configItem() {
    return Container(
      color: asRead ? Colors.white : AppColors.lightBlue,
      padding: EdgeInsets.only(
        top: 0,
        bottom: AppDimensions.largerPadding,
        left: AppDimensions.mediumSize,
        right: AppDimensions.mediumSize,
      ),
      child: Row(
        children: [
          SizedBox.square(
            dimension: AppDimensions.largestSize,
            child: Container(
              padding: EdgeInsets.all(AppDimensions.smallPadding),
              decoration: BoxDecoration(
                color: AppColors.lightPink,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                AppIcons.tag,
              ),
            ),
          ),
          AppDimensions.mediumWidthSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontWeight: asRead ? FontWeight.normal : FontWeight.bold,
                          fontSize: AppDimensions.mediumFontSize,
                        ),
                      ),
                    ),
                    AppDimensions.smallestWidthSpace,
                    Text(
                      datetime,
                      style: TextStyle(
                        fontWeight: asRead ? FontWeight.normal : FontWeight.bold,
                        fontSize: AppDimensions.smallerFontSize,
                      ),
                    ),
                  ],
                ),
                AppDimensions.smallerHeightSpace,
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.smallMediumFont,
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
    return _configItem();
  }
}
