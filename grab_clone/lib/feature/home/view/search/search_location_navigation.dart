import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/widgets/tag_label.dart';
import 'package:grab_clone/feature/widgets/search_bar.dart';
import 'package:grab_clone/extension/build_context_extension.dart';

class SearchLocationNavigation extends StatelessWidget {
  String navigationTitle;
  bool isSearchSuggestion;

  SearchLocationNavigation({
    required this.navigationTitle,
    required this.isSearchSuggestion,
  });

  Widget _configLeading(BuildContext context) {
    return Container(
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
                          width: 16,
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
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBarWidget(
            height: AppDimensions.navigationBarHeight,
          ),
          AppDimensions.smallHeightSpace,
          _listSearchTags(),
        ],
      ),
    );
  }

  Widget _listSearchTags() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
      ),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TagLabel(text: "All", isFill: true),
          AppDimensions.smallerWidthSpace,
          TagLabel(text: "Destinations"),
          AppDimensions.smallerWidthSpace,
          TagLabel(text: "Restaurant"),
          AppDimensions.smallerWidthSpace,
          TagLabel(text: "Groceries and supplies"),
        ],
      ),
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
