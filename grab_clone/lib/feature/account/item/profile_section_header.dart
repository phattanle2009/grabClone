import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

class ProfileSectionHeader extends StatelessWidget {
  const ProfileSectionHeader({super.key});

  Widget _config() {
    return Padding(
      padding: EdgeInsets.only(
        top: AppDimensions.mediumSize,
        bottom: AppDimensions.largeSize,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.avatarSize / 2),
            child: Image.asset(
              AppImages.avatar,
              width: AppDimensions.avatarSize,
              height: AppDimensions.avatarSize,
            ),
          ),
          AppDimensions.mediumWidthSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lê Tấn Phát",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                AppDimensions.smallerHeightSpace,
                Row(
                  children: [
                    Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.lightGray,
                      ),
                    ),
                    AppDimensions.smallerWidthSpace,
                    Image.asset(
                      AppIcons.rightArrow,
                      width: AppDimensions.smallSize,
                      color: AppColors.lightGray,
                    ),
                  ],
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
    return _config();
  }
}
