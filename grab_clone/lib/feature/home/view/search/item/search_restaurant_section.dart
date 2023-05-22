import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/feature/widgets/more_result.dart';
import 'package:grab_clone/feature/widgets/header_title.dart';
import 'package:grab_clone/feature/home/view/search/item/search_restaurant_item.dart';

class SearchRestaurantSection extends StatelessWidget {
  const SearchRestaurantSection({super.key});

  Widget _buildRestaurants() {
    var list = Mock.searchRestaurants;
    return Wrap(
      children: list.map(
        (data) {
          return SearchRestaurantItem(
            title: data.merchantName,
            desc: data.desc,
            imageName: data.imageName,
            distance: data.distance,
            rating: data.rating,
            routeTime: data.routeTime,
            moreInfos: data.moreInfos,
            isPromo: data.isPromo,
          );
        },
      ).toList(),
    );
  }

  Widget _buildRestaurantsSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppDimensions.largeHeightSpace,
          HeaderTitle(
            sectionHeader: "Restaurants",
            style: AppTextStyles.biggerBoldFont,
          ),
          AppDimensions.mediumHeightSpace,
          _buildRestaurants(),
          AppDimensions.mediumHeightSpace,
          Container(
            height: 1,
            color: AppColors.lighterGrey,
          ),
          MoreResultButton(title: "More Restaurants"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildRestaurantsSection();
  }
}
