import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/home/sections/items/oder_now_cart_item.dart';

class OrderNowSection extends StatelessWidget {
  Widget _buildingSection(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        children: [
          OderNowCartItem(
            title: "Càng đặt càng lời",
            subTitle: "Sponsored by Japanit Matcha & Coffee House",
            imageName: AppImages.banner1,
            width: MediaQuery.of(context).size.width,
          ),
          AppDimensions.mediumWidthSpace,
          OderNowCartItem(
            title: "Càng đặt càng lời",
            subTitle: "Sponsored by Japanit Matcha & Coffee House",
            imageName: AppImages.banner1,
            width: MediaQuery.of(context).size.width,
          ),
          AppDimensions.mediumWidthSpace,
          OderNowCartItem(
            title: "Càng đặt càng lời",
            subTitle: "Sponsored by Japanit Matcha & Coffee House",
            imageName: AppImages.banner1,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildingSection(context);
  }
}
