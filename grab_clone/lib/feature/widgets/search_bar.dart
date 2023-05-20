import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';

class SearchBarWidget extends StatelessWidget {
  final double height;
  final String searchText;
  final TextEditingController searchController;
  final Function(String) onSubmitted;
  final Function onCleared;

  SearchBarWidget({
    required this.height,
    required this.searchText,
    required this.searchController,
    required this.onSubmitted,
    required this.onCleared,
  });

  Widget _textfield() {
    return Expanded(
      child: Container(
        child: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: searchText.isEmpty ? 'Search...' : null,
            border: InputBorder.none,
            isCollapsed: true,
            fillColor: null,
          ),
          textAlignVertical: TextAlignVertical.center,
          onSubmitted: (value) => onSubmitted(value),
        ),
      ),
    );
  }

  Widget _config() {
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.smallerSize,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
      ),
      decoration: BoxDecoration(
        color: AppColors.mediumGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppDimensions.smallerBorder,
          ),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            AppIcons.search,
            width: AppDimensions.imageSmallSize,
            color: AppColors.lightGray,
          ),
          AppDimensions.smallerWidthSpace,
          _textfield(),
          AppDimensions.smallerWidthSpace,
          InkWell(
            onTap: () {
              onCleared();
            },
            child: Image.asset(
              AppIcons.clear,
              width: AppDimensions.imageSmallSize,
              color: AppColors.lightGray,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config();
  }
}
