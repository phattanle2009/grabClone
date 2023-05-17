import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

enum SuggestionSearchLocationType {
  searchText,
  recently,
  destination,
}

class SearchLocationItem extends StatelessWidget {
  final String title;
  final String address;
  final SuggestionSearchLocationType type;

  SearchLocationItem({
    required this.title,
    required this.address,
    required this.type,
  });

  Color _getIconBackgroundColor() {
    switch (type) {
      case SuggestionSearchLocationType.destination:
        return Colors.white;
      case SuggestionSearchLocationType.recently:
        return AppColors.mediumGreen;
      case SuggestionSearchLocationType.searchText:
        return AppColors.iconBackgroundGrey;
    }
  }

  Color _getIconColor() {
    switch (type) {
      case SuggestionSearchLocationType.destination:
        return Colors.black54;
      case SuggestionSearchLocationType.recently:
        return Colors.white;
      case SuggestionSearchLocationType.searchText:
        return Colors.black87;
    }
  }

  String _getIconNamed() {
    switch (type) {
      case SuggestionSearchLocationType.destination:
        return AppIcons.location2;
      case SuggestionSearchLocationType.recently:
        return AppIcons.location3;
      case SuggestionSearchLocationType.searchText:
        return AppIcons.directionArrow;
    }
  }

  Widget _configIcon() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _getIconBackgroundColor(),
        border: Border.all(
          width: 1,
          color: type == SuggestionSearchLocationType.destination
              ? AppColors.lightGray
              : Colors.transparent,
        ),
      ),
      child: SizedBox.square(
        dimension: type == SuggestionSearchLocationType.destination
            ? AppDimensions.smallAvatarSize
            : AppDimensions.imageLargeSize,
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Image.asset(
            _getIconNamed(),
            color: _getIconColor(),
          ),
        ),
      ),
    );
  }

  Widget _config() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.smallSize),
      child: Row(
        children: [
          _configIcon(),
          AppDimensions.mediumWidthSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  style: AppTextStyles.smallMediumFont,
                ),
                address == ""
                    ? Container()
                    : Text(
                        address,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.smallerMediumFont.copyWith(
                          color: AppColors.lightGray,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("tapped on item ${title}\n${address}");
      },
      child: _config(),
    );
  }
}
