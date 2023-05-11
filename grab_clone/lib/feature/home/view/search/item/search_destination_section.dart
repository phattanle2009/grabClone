import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/widgets/header_title.dart';
import 'package:grab_clone/feature/home/view/search/item/search_location_item.dart';
import 'package:grab_clone/feature/widgets/more_result.dart';

class SearchDestinationSection extends StatelessWidget {
  const SearchDestinationSection({super.key});

  Widget _buildDestinations() {
    var list = Mock.destinationItems;
    return Wrap(
      children: list.map(
        (data) {
          return SearchLocationItem(
            title: data.title,
            address: data.detailAddress ?? "",
            type: data.type,
          );
        },
      ).toList(),
    );
  }

  Widget _buildDestinationsSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppDimensions.largeHeightSpace,
          HeaderTitle(sectionHeader: "Destinations"),
          AppDimensions.mediumHeightSpace,
          _buildDestinations(),
          AppDimensions.mediumHeightSpace,
          Container(
            height: 1,
            color: AppColors.lighterGrey,
          ),
          MoreResultButton(title: "More Destinations"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildDestinationsSection();
  }
}
