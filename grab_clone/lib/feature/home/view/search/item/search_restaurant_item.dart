import 'package:flutter/material.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

class SearchRestaurantItem extends StatelessWidget {
  String title;
  String desc;
  String imageName;
  double distance;
  double rating;
  String routeTime;
  String? moreInfos;
  bool isPromo;

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
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: AppDimensions.smallerFontSize,
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
      style: TextStyle(
        fontSize: AppDimensions.smallerFontSize,
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
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: AppDimensions.smallerFontSize,
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
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: AppDimensions.smallerFontSize,
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
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: AppDimensions.smallerFontSize,
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