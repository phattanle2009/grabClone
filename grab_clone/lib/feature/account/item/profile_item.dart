import 'package:flutter/material.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final bool isHeaderTitle;
  final String? label;
  final String? leadingIconName;
  final Color? labelColor;
  final Color? backgroundColorForLabel;

  ProfileItem({
    required this.title,
    this.isHeaderTitle = false,
    this.label = null,
    this.leadingIconName = null,
    this.labelColor = null,
    this.backgroundColorForLabel = null,
  });

  Widget _configHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.largeSize),
      child: Text(
        title,
        style: AppTextStyles.bigBoldFont,
      ),
    );
  }

  Widget _config(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppDimensions.mediumHeightSpace,
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppTextStyles.smallMediumFont,
                ),
              ),
              leadingIconName == null
                  ? Container()
                  : Image.asset(
                      leadingIconName!,
                      width: AppDimensions.imageMediumSize,
                      height: AppDimensions.imageMediumSize,
                    ),
              (label == null)
                  ? Container()
                  : Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.smallerSize,
                        vertical: AppDimensions.smallestSize,
                      ),
                      decoration: BoxDecoration(
                        color: backgroundColorForLabel ?? Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            AppDimensions.imageMediumSize,
                          ),
                        ),
                      ),
                      child: Text(
                        label!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: backgroundColorForLabel == null ? AppDimensions.smallerFontSize : AppDimensions.smallestFontSize,
                          fontWeight: backgroundColorForLabel == null ? FontWeight.normal : FontWeight.bold,
                          color: labelColor ?? Colors.white,
                        ),
                      ),
                    ),
              AppDimensions.smallWidthSpace,
              Image.asset(
                AppIcons.rightArrow,
                width: AppDimensions.imageSmallerSize,
                height: AppDimensions.imageSmallerSize,
                color: AppColors.lightGray,
              )
            ],
          ),
          AppDimensions.mediumHeightSpace,
          Container(
            height: 1,
            color: AppColors.lighterGrey,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isHeaderTitle ? _configHeader() : _config(context);
  }
}
