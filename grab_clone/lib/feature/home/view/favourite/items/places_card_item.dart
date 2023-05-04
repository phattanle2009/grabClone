import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';

class PlacesCardItem extends StatelessWidget {
  String title;
  String address;

  PlacesCardItem({
    required this.title,
    required this.address,
  });

  Widget _config() {
    return InkWell(
      child: Container(
        width: AppDimensions.littleBigSize,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppDimensions.littleBigSize,
              padding: EdgeInsets.all(AppDimensions.mediumSize),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.all(
                  Radius.circular(AppDimensions.smallestSize),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.green,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    AppIcons.bookmark,
                    color: Colors.white,
                    width: AppDimensions.largerSize,
                  ),
                ),
              ),
            ),
            AppDimensions.smallerHeightSpace,
            Text(
              title,
              style: AppTextStyles.bigMediumFont,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            AppDimensions.smallerHeightSpace,
            Text(
              address,
              style: AppTextStyles.smallerMediumFont,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config();
  }
}
