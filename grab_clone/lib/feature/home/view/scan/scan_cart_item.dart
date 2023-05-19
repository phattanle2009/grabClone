import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';

class ScanCartItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageName;
  final String buttonTitle;

  ScanCartItem({
    required this.title,
    required this.subtitle,
    required this.imageName,
    required this.buttonTitle,
  });

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimensions.smallSize),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: AppDimensions.mediumSize,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.mediumSize,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: AppDimensions.smallerSize),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppDimensions.mediumHeightSpace,
                        Text(
                          title,
                          style: AppTextStyles.biggerBoldFont,
                        ),
                        AppDimensions.mediumHeightSpace,
                        Text(
                          subtitle,
                          maxLines: 4,
                          style: AppTextStyles.bigMediumFont,
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  imageName,
                  width: AppDimensions.avatarSize,
                ),
              ],
            ),
          ),
          AppDimensions.largeHeightSpace,
          Container(
            height: 1,
            color: AppColors.lightGray,
          ),
          AppDimensions.mediumHeightSpace,
          InkWell(
            onTap: () {
              print("tapped on $title");
            },
            child: Row(
              children: [
                AppDimensions.mediumWidthSpace,
                Expanded(
                  child: Text(
                    buttonTitle,
                    style: AppTextStyles.biggerBoldFont.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Image.asset(
                  AppIcons.rightArrow,
                  width: AppDimensions.imageSmallSize,
                ),
                AppDimensions.mediumWidthSpace,
              ],
            ),
          ),
          AppDimensions.mediumHeightSpace,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
