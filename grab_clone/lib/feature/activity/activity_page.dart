import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      title: const Text(
        "Activity",
        style: AppTextStyles.biggestBoldFont,
      ),
      centerTitle: false,
      actions: [
        Container(
          margin: const EdgeInsets.only(
            top: AppDimensions.smallMargin,
            right: AppDimensions.smallMargin,
          ),
          padding: const EdgeInsets.all(AppDimensions.smallerPadding),
          decoration: const BoxDecoration(
            color: AppColors.lightBlue,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: GestureDetector(
            child: Row(
              children: [
                Image.asset(
                  AppIcons.history,
                  width: AppDimensions.imageMediumSize,
                  height: AppDimensions.imageMediumSize,
                ),
                AppDimensions.smallerWidthSpace,
                const Text(
                  "History",
                  style: AppTextStyles.bigBoldFont,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _emptyContent() {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: AppDimensions.bannerSize,
          ),
          Image.asset(
            AppImages.activityEmpty,
            width: AppDimensions.bannerSize,
            height: AppDimensions.bannerSize,
          ),
          const Text(
            "Nothing's happening now",
            style: AppTextStyles.biggerBoldFont,
          ),
          const Text(
            "When you use our services, you'll see them here",
            style: AppTextStyles.smallMediumFont,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _emptyContent(),
    );
  }
}
