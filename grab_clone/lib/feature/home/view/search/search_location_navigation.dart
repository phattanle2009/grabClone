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
  String navigationTitle;
  bool isSearchSuggestion;
  bool isShowShadow;
  final Function(String) onSubmitted;
  final Function(String) onTappedLabel;

  SearchLocationNavigation({
    required this.navigationTitle,
    required this.isSearchSuggestion,
    required this.isShowShadow,
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
      decoration: isShowShadow ? _configShadow() : null,
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBarWidget(
            height: AppDimensions.navigationBarHeight,
            onSubmitted: (value) => onSubmitted(value),
          ),
          AppDimensions.smallHeightSpace,
          isSearchSuggestion ? Container() : _listSearchTags(),
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
          TagLabel(
            text: "All",
            onTappedLabel: (value) => onTappedLabel(value),
          ),
          // AppDimensions.smallerWidthSpace,
          TagLabel(
            text: "Destinations",
            onTappedLabel: (value) => onTappedLabel(value),
          ),
          // AppDimensions.smallerWidthSpace,
          TagLabel(
            text: "Restaurant",
            onTappedLabel: (value) => onTappedLabel(value),
          ),
          // AppDimensions.smallerWidthSpace,
          TagLabel(
            text: "Groceries and supplies",
            onTappedLabel: (value) => onTappedLabel(value),
          ),
        ],
      ),
    );
  }

  // Widget _listSearchTags() {
  //   final list = Mock.tagItems;
  //   return ListView.builder(
  //     itemCount: list.length,
  //     itemBuilder: (context, index) {
  //       return TagLabel(
  //         text: list[index],
  //         onTappedLabel: (value) => onTappedLabel(value),
  //       );
  //     },
  //     padding: EdgeInsets.symmetric(
  //       horizontal: AppDimensions.mediumSize,
  //     ),
  //     scrollDirection: Axis.horizontal,
  //   );
  // }

  BoxDecoration _configShadow() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: AppColors.lighterGrey,
          blurRadius: 18,
          offset: Offset(0.0, 24.0),
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
