import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/feature/home/sections/items/grab_unlimited_item.dart';

class GrabUnlimitedSection extends StatelessWidget {
  const GrabUnlimitedSection({super.key});

  Widget _sectionHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Text(
        "Save 170.000đ with GrabUnlimited",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 4),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GrabUnlimitedItem(
              title: "Freeship 15.000đ mỗi đơn GrabFood",
              backgroundImage: AppImages.grabUnlimited1,
              subtitle: "Tìm hiểu thêm",
            ),
            AppDimensions.smallWidthSpace,
            GrabUnlimitedItem(
              title: "Đăng ký ngay chỉ 1.000đ",
              backgroundImage: AppImages.grabUnlimited2,
              subtitle: "Giá gốc 49.000đ",
            ),
          ],
        ),
      ),
    );
  }

  Widget _config() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
