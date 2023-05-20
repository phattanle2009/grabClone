import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/widgets/tag_label.dart';
import 'package:grab_clone/feature/widgets/search_bar.dart';
import 'package:grab_clone/extension/build_context_extension.dart';

class SearchLocationNavigation extends StatelessWidget {
  final String searchText;
  final String navigationTitle;
  final bool isSearchSuggestion;
  final bool isShowShadow;
  final bool isShowSearchBar;
  final String selectedLabel;
  final TextEditingController searchController;
  final Function onCleared;
  final Function(String) onSubmitted;
  final Function(String) onTappedLabel;

  SearchLocationNavigation({
    required this.searchText,
    required this.navigationTitle,
    required this.isSearchSuggestion,
    required this.isShowShadow,
    required this.isShowSearchBar,
    required this.selectedLabel,
    required this.searchController,
    required this.onCleared,
    required this.onSubmitted,
    required this.onTappedLabel,
  });

  Widget _configLeading(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppDimensions.smallWidthSpace,
          InkWell(
            onTap: () {
              context.pop();
            },
            child: Image.asset(
              AppIcons.leftArrow,
              width: AppDimensions.largeSize,
            ),
          ),
          AppDimensions.smallWidthSpace,
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your location",
                    style: AppTextStyles.smallerMediumFont,
                  ),
                  AppDimensions.smallerHeightSpace,
                  Container(
                    height: AppDimensions.mediumSize,
                    child: Row(
                      children: [
                        Image.asset(
                          AppIcons.location,
                          width: AppDimensions.mediumSize,
                        ),
                        AppDimensions.smallerWidthSpace,
                        Text(
                          navigationTitle,
                          style: AppTextStyles.smallBoldFont,
                        ),
                      ],
                    ),
                  ),
                  AppDimensions.smallHeightSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottom() {
    return Container(
      decoration: isShowShadow ? _configShadow() : null,
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.smallerPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchBar(),
          AppDimensions.smallHeightSpace,
          _listSearchTags(),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    searchController.text = searchText;
    return AnimatedContainer(
      duration: Duration(microseconds: 100),
      curve: Curves.easeInOutExpo,
      child: SearchBarWidget(
        searchText: searchText,
        height: isShowSearchBar ? AppDimensions.navigationBarHeight : 0,
        searchController: searchController,
        onSubmitted: (value) => onSubmitted(value),
        onCleared: () => onCleared(),
      ),
    );
  }

  Widget _listSearchTags() {
    final list = Mock.tagItems;
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
      height: isSearchSuggestion ? 0 : 30,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return TagLabel(
            text: list[index],
            onTappedLabel: (value) => onTappedLabel(value),
            isFill: list[index] == selectedLabel,
          );
        },
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.mediumSize,
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  BoxDecoration _configShadow() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: AppColors.lighterGrey,
          blurRadius: AppDimensions.bigFontSize,
          offset: Offset(0.0, AppDimensions.largeSize),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _configLeading(context),
          _bottom(),
        ],
      ),
    );
  }
}
