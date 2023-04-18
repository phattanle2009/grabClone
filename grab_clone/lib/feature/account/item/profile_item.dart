import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';

class ProfileItem extends StatelessWidget {
  String title;
  String? label;
  String? leadingIconName;
  Color? labelColor;
  Color? backgroundColorForLabel;

  ProfileItem({
    required this.title,
    this.label = null,
    this.leadingIconName = null,
    this.labelColor = null,
    this.backgroundColorForLabel = null,
  });

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
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              leadingIconName == null
                  ? Container()
                  : Image.asset(
                      leadingIconName!,
                      width: 20,
                      height: 20,
                    ),
              (label == null)
                  ? Container()
                  : Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: backgroundColorForLabel ?? Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Text(
                        label!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: backgroundColorForLabel == null ? 12 : 10,
                          fontWeight: backgroundColorForLabel == null ? FontWeight.normal : FontWeight.bold,
                          color: labelColor ?? Colors.white,
                        ),
                      ),
                    ),
              AppDimensions.smallWidthSpace,
              Image.asset(
                AppIcons.rightArrow,
                width: 10,
                height: 10,
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
    return _config(context);
  }
}
