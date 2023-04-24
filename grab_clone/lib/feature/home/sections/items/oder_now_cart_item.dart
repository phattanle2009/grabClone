import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/dimensions.dart';

class OderNowCartItem extends StatelessWidget {
  String title;
  String subTitle;
  String imageName;
  double width;

  OderNowCartItem({
    required this.title,
    required this.subTitle,
    required this.imageName,
    required this.width,
  });

  Widget _buildingItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Order now",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            AppDimensions.smallWidthSpace,
            Container(
              width: AppDimensions.imageMediumSize,
              height: AppDimensions.imageMediumSize,
              padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.smallestPadding,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
              child: Image.asset(
                AppIcons.fastForward,
                width: AppDimensions.imageSmallSize,
                height: AppDimensions.imageSmallSize,
              ),
            ),
          ],
        ),
        AppDimensions.mediumHeightSpace,
        Image.asset(
          imageName,
          width: width - 32,
        ),
        AppDimensions.smallerHeightSpace,
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        Text(
          subTitle,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildingItem();
  }
}
