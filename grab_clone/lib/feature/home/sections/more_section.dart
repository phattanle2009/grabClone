import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/feature/home/sections/items/more_collection_item.dart';

class HomeMoreSection extends StatelessWidget {
  const HomeMoreSection({super.key});

  Widget _sectionHeader() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Text(
        "Do more with Grab",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    );
  }

  Widget _configCollection() {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MoreCollectionItem(
              title: "Tặng quà bạn bè",
              subtitle: "GrabGift",
              iconName: AppIcons.present,
            ),
            AppDimensions.smallWidthSpace,
            MoreCollectionItem(
              title: "Ưu đãi\nthẻ/Ví",
              iconName: AppIcons.space,
            ),
            AppDimensions.smallWidthSpace,
            MoreCollectionItem(
              title: "Tích điểm nhanh?",
              iconName: AppIcons.cryptocurrency,
            ),
            AppDimensions.smallWidthSpace,
            MoreCollectionItem(
              title: "Khám phá",
              subtitle: "GrabCashless",
              iconName: AppIcons.bankCard,
            ),
            AppDimensions.smallWidthSpace,
            MoreCollectionItem(
              title: "Tìm ưu đãi?",
              subtitle: "Rewards ngay",
              iconName: AppIcons.birthdayCart,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionHeader(),
          _configCollection(),
        ],
      ),
    );
  }
}
