import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/feature/widgets/header_title.dart';

class PaymentSettingItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String sectionTitle;
  final Function onTap;

  PaymentSettingItem({
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.sectionTitle,
  });

  Widget _buildItem() {
    return InkWell(
      onTap: () => onTap(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppIcons.grabCircleBackground,
            width: AppDimensions.smallAvatarSize,
          ),
          AppDimensions.mediumWidthSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.smallMediumFont.copyWith(
                    color: Colors.black87,
                  ),
                ),
                AppDimensions.smallerHeightSpace,
                Text(
                  subtitle,
                  style: AppTextStyles.smallerMediumFont.copyWith(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            AppIcons.rightArrow,
            width: AppDimensions.imageSmallSize,
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderTitle(
          sectionHeader: sectionTitle,
          style: AppTextStyles.bigBoldFont,
        ),
        AppDimensions.largerHeightSpace,
        _buildItem(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
