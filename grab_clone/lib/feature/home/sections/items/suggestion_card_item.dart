import 'package:flutter/material.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/extension/string_extension.dart';

class SuggestionCartItem extends StatelessWidget {
  final String title;
  final String imageName;
  final double distance;
  final double rating;
  final int? cost;
  final String hotLabel;
  final double width;

  SuggestionCartItem({
    required this.title,
    required this.imageName,
    required this.distance,
    required this.rating,
    this.cost,
    required this.hotLabel,
    required this.width,
  });

  Widget _buildingItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            AppDimensions.smallestSize,
          ),
          child: Image.asset(
            imageName,
            width: width * 0.4,
            height: width * 0.3,
            fit: BoxFit.fill,
          ),
        ),
        AppDimensions.smallerHeightSpace,
        Text(
          title,
          style: AppTextStyles.bigMediumFont,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            Text(
              "$distance km",
              style: AppTextStyles.smallerMediumFont,
            ),
            AppDimensions.smallerWidthSpace,
            Container(
              alignment: Alignment.center,
              height: 2,
              width: 2,
              decoration: BoxDecoration(
                color: AppColors.lightGray,
                shape: BoxShape.circle,
              ),
            ),
            AppDimensions.smallerWidthSpace,
            Image.asset(
              AppIcons.star,
              width: AppDimensions.imageMediumSize,
              height: AppDimensions.imageMediumSize,
            ),
            AppDimensions.smallestWidthSpace,
            Text(
              "$rating",
              style: AppTextStyles.smallerMediumFont,
            ),
          ],
        ),
        cost == null
            ? Container()
            : Text(
                "$cost".getConcurrency(),
                style: AppTextStyles.smallerBoldFont,
              ),
        cost != null
            ? Container()
            : Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.smallestSize,
                  vertical: AppDimensions.smallestSize,
                ),
                decoration: BoxDecoration(
                  color: AppColors.lightPink,
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppDimensions.smallBorder),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.fire,
                      width: AppDimensions.imageSmallSize,
                      height: AppDimensions.imageSmallSize,
                    ),
                    Text(
                      " $hotLabel ",
                      style: AppTextStyles.smallestMediumFont,
                    ),
                    Image.asset(
                      AppIcons.fire,
                      width: AppDimensions.imageSmallSize,
                      height: AppDimensions.imageSmallSize,
                    ),
                  ],
                ),
              ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildingItem();
  }
}
