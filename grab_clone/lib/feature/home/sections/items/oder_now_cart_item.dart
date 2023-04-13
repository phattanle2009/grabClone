import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';

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
              width: 20,
              height: 20,
              padding: EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
              child: Image.asset(
                AppIcons.fastForward,
                width: 14,
                height: 14,
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
