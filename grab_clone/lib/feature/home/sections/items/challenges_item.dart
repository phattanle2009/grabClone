import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

class ChallengesItem extends StatelessWidget {
  String iconName;
  String title;
  String datetime;
  String subtitle;

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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  AppDimensions.smallestHeightSpace,
                  Text(
                    datetime,
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                  ),
                  AppDimensions.smallestHeightSpace,
                  Text(
                    subtitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.blue),
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
