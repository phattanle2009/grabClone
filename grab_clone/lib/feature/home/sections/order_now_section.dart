import 'package:flutter/material.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/sections/items/oder_now_cart_item.dart';

class OrderNowSection extends StatelessWidget {
  Widget _buildingSection(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.width * 0.8 + 16,
      padding: const EdgeInsets.symmetric(
        vertical: AppDimensions.smallerPadding,
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.mediumSize,
        ),
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
            title: "Menu xịn xò chớ bỏ qua",
            subTitle: "Sponsored by Núp Tea & Coffee - Bà Hạt",
            imageName: AppImages.banner2,
            width: MediaQuery.of(context).size.width,
          ),
          AppDimensions.mediumWidthSpace,
          OderNowCartItem(
            title: "Thỏa sức ăn no không lo về giá",
            subTitle: "Sponsored by Bánh mì Hà Nội chính hiệu",
            imageName: AppImages.banner3,
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
