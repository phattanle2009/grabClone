import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class CardCollectionItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageName;

  CardCollectionItem({
    required this.title,
    required this.subTitle,
    required this.imageName,
  });

  Widget _configItem() {
    return AspectRatio(
      aspectRatio: 2.5,
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.smallerPadding),
        decoration: const BoxDecoration(
          color: AppColors.lighterGrey,
          borderRadius: BorderRadius.all(
            Radius.circular(AppDimensions.smallerPadding),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.left,
                maxLines: 1,
                style: AppTextStyles.smallerMediumFont,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      subTitle,
                      style: AppTextStyles.smallBoldFont,
                    ),
                  ),
                  Image.asset(
                    imageName,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _configItem();
  }
}
