import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/extension/string_extension.dart';

class SuggestionCartItem extends StatelessWidget {
  String title;
  String imageName;
  double distance;
  double rating;
  int? cost;
  String hotLabel;
  double width;

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
          borderRadius: BorderRadius.circular(5),
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
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            Text(
              "$distance km",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0),
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
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0),
            ),
          ],
        ),
        cost == null
            ? Container()
            : Text(
                "$cost".getConcurrency(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
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
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10.0),
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
