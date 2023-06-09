import 'package:flutter/material.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

class SearchRestaurantItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageName;
  final double distance;
  final double rating;
  final String routeTime;
  final String? moreInfos;
  final bool isPromo;

  SearchRestaurantItem({
    required this.title,
    required this.desc,
    required this.imageName,
    required this.distance,
    required this.rating,
    required this.routeTime,
    required this.moreInfos,
    required this.isPromo,
  });

  Widget _buildThumbnail() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            AppDimensions.smallestSize,
          ),
          child: Image.asset(
            imageName,
            width: AppDimensions.avatarSize,
            height: AppDimensions.avatarSize,
            fit: BoxFit.fill,
          ),
        ),
        _buildPromoItem(),
      ],
    );
  }

  Widget _buildPromoItem() {
    return !isPromo
        ? Container()
        : Positioned.fill(
            child: Wrap(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        AppDimensions.smallestSize,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.all(
                    AppDimensions.smallestSize,
                  ),
                  child: Text(
                    "Promo",
                    style: AppTextStyles.smallerBoldFont.copyWith(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          );
  }

  Widget _buildTitle() {
    return Text(
      title,
      style: AppTextStyles.smallMediumFont,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildDesc() {
    return Text(
      desc,
      style: AppTextStyles.smallerMediumFont.copyWith(
        color: AppColors.lightGray,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildInfo() {
    return Row(
      children: [
        Image.asset(
          AppIcons.star,
          width: AppDimensions.imageSmallSize,
          height: AppDimensions.imageSmallSize,
        ),
        AppDimensions.smallestWidthSpace,
        Text(
          "$rating",
          style: AppTextStyles.smallerMediumFont.copyWith(
            color: AppColors.lightGray,
          ),
        ),
        AppDimensions.smallerWidthSpace,
        Image.asset(
          AppIcons.clock,
          width: AppDimensions.imageSmallSize,
          height: AppDimensions.imageSmallSize,
          color: AppColors.lightGray,
        ),
        AppDimensions.smallestWidthSpace,
        Text(
          "$routeTime min · $distance km",
          style: AppTextStyles.smallerMediumFont.copyWith(
            color: AppColors.lightGray,
          ),
        ),
      ],
    );
  }

  Widget _buildMoreInfos() {
    if (moreInfos == null || moreInfos == "") {
      return Text("");
    }
    return Row(
      children: [
        Image.asset(
          AppIcons.spoonFork,
          width: AppDimensions.imageSmallSize,
          height: AppDimensions.imageSmallSize,
        ),
        AppDimensions.smallestWidthSpace,
        Text(
          moreInfos!,
          style: AppTextStyles.smallerMediumFont.copyWith(
            color: AppColors.lightGray,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        _buildDesc(),
        AppDimensions.smallerHeightSpace,
        _buildInfo(),
        AppDimensions.smallestHeightSpace,
        _buildMoreInfos(),
      ],
    );
  }

  Widget _buildingItem() {
    return Container(
      margin: EdgeInsets.only(
        bottom: AppDimensions.smallSize,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildThumbnail(),
          AppDimensions.mediumWidthSpace,
          Expanded(
            child: _buildText(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildingItem();
  }
}
