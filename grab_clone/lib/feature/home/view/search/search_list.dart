import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/sections/suggestion_section.dart';
import 'package:grab_clone/feature/home/view/search/item/search_destination_section.dart';
import 'package:grab_clone/feature/home/view/search/item/search_restaurant_section.dart';
import 'package:grab_clone/feature/widgets/more_result.dart';

class SearchList extends StatelessWidget {
  final ScrollController scrollController;

  SearchList({
    required this.scrollController,
  });

  Widget _lightGreyColor() {
    return Container(
      height: AppDimensions.smallerSize,
      color: AppColors.lighterGrey,
    );
  }

  Widget _buildSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SuggestionSection(
          sectionHeader: "Groceries and supplies",
          list: Mock.foods,
        ),
        AppDimensions.mediumHeightSpace,
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: AppDimensions.mediumSize,
          ),
          height: 1,
          color: AppColors.lighterGrey,
        ),
        MoreResultButton(title: "More Groceries and supplies"),
        _lightGreyColor(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchDestinationSection(),
          _lightGreyColor(),
          SearchRestaurantSection(),
          _lightGreyColor(),
          _buildSection(),
        ],
      ),
    );
  }
}
