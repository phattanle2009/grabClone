import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';

class SearchBarWidget extends StatelessWidget {
  double height;
  final TextEditingController _searchController = TextEditingController();

  SearchBarWidget({
    required this.height,
  });

  Widget _textfield() {
    return Expanded(
      child: Container(
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            isCollapsed: true,
          ),
          textAlignVertical: TextAlignVertical.center,
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
        color: AppColors.lighterGrey,
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
              _searchController.clear();
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
