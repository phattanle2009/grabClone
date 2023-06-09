import 'package:flutter/material.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/feature/home/sections/items/challenges_item.dart';

class ChallengesSection extends StatelessWidget {
  const ChallengesSection({super.key});

  Widget _sectionHeader() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
        vertical: AppDimensions.mediumSize,
      ),
      child: Text(
        "Get rewarded with Challenges",
        style: AppTextStyles.biggerBoldFont,
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      height: AppDimensions.bigerSize,
      padding: const EdgeInsets.symmetric(
        vertical: AppDimensions.mediumSize,
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.mediumSize,
        ),
        scrollDirection: Axis.horizontal,
        children: [
          ChallengesItem(
            iconName: AppImages.bill,
            title: "Win Tiki Xu 30.000 VND gift card !",
            datetime: "Ends on 30 Apr 2023",
            subtitle: "Accept this challenge",
          ),
          AppDimensions.smallWidthSpace,
          ChallengesItem(
            iconName: AppImages.key,
            title: "Win 01 Bình giữ nhiệt LocknLock!",
            datetime: "Ends on 30 May 2023",
            subtitle: "Accept this challenge",
          ),
        ],
      ),
    );
  }

  Widget _config() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionHeader(),
          _buildBody(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config();
  }
}
