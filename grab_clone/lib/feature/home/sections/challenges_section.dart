import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/feature/home/sections/items/challenges_item.dart';

class ChallengesSection extends StatelessWidget {
  const ChallengesSection({super.key});

  Widget _sectionHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Text(
        "Get rewarded with Challenges",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
            title: "Win Shoppee Xu 10.000 VND voucher !",
            datetime: "Ends on 10 May 2023",
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
