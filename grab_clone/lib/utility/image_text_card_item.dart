import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/dimensions.dart';

class ImageTextCardItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String discountLabel;
  final String discountPrice;

  ImageTextCardItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.discountLabel,
    required this.discountPrice,
  });

  Widget _attributeText() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: discountLabel,
            style: AppTextStyles.smallerMediumFont,
          ),
          TextSpan(
            text: discountPrice,
            style: AppTextStyles.smallerMediumFont.copyWith(
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Row(
      children: [
        SizedBox(
          height: AppDimensions.littleBigSize,
          child: AspectRatio(
            aspectRatio: 1.4,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        AppDimensions.smallWidthSpace,
        Expanded(
          child: Container(
            height: AppDimensions.littleBigSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppDimensions.smallerHeightSpace,
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.bigBoldFont,
                ),
                AppDimensions.smallestHeightSpace,
                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.smallerMediumFont,
                ),
                AppDimensions.smallestHeightSpace,
                Row(
                  children: [
                    Image.asset(
                      AppIcons.tag,
                      width: AppDimensions.imageMediumSize,
                    ),
                    AppDimensions.smallestWidthSpace,
                    Expanded(
                      child: _attributeText(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        AppDimensions.smallWidthSpace,
        Image.asset(
          AppIcons.rightArrow,
          width: AppDimensions.imageSmallSize,
        ),
        AppDimensions.smallWidthSpace,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      child: Container(
        color: Colors.white,
        child: _buildBody(),
      ),
    );
  }
}
