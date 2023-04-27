import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class MoreCollectionItem extends StatelessWidget {
  String title;
  String? subtitle;
  String iconName;

  MoreCollectionItem({
    required this.title,
    this.subtitle = null,
    required this.iconName,
  });

  Widget _config(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 3 - 16 * 2;

    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        color: AppColors.mediumPink,
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimensions.smallBorder),
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(iconName),
          Positioned(
            top: AppDimensions.smallPadding,
            left: AppDimensions.smallerPadding,
            right: AppDimensions.smallerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.smallBoldFont,
                ),
                subtitle == null
                    ? Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.smallerSize,
                          vertical: AppDimensions.smallerSize,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(AppDimensions.mediumBorder),
                          ),
                        ),
                        child: Text(
                          "Xem ngay",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: AppDimensions.smallestFontSize,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Text(
                        subtitle!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.smallerMediumFont,
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
    return _config(context);
  }
}
