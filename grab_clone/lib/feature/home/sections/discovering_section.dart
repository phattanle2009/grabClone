import 'package:flutter/material.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/sections/items/grab_unlimited_item.dart';

class DiscoveringSection extends StatelessWidget {
  const DiscoveringSection({super.key});

  Widget _sectionHeader() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.mediumSize,
        horizontal: AppDimensions.mediumSize,
      ),
      child: Text(
        "Keep discovering",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    );
  }

  Widget _configCollection(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2 - 16 - 8;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
      ),
      child: GridView(
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: AppDimensions.mediumSize,
          mainAxisSpacing: AppDimensions.mediumSize,
          childAspectRatio: 1,
          mainAxisExtent: width + 70,
          crossAxisCount: 2,
        ),
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          GrabUnlimitedItem(
            title: "Tiết kiệm  lên đến 10%",
            subtitle: "9h00-16h00",
            backgroundImage: AppImages.discover1,
          ),
          GrabUnlimitedItem(
            title: "Quẹt ví Moca nhận ưu đãi HOT",
            subtitle: "🗓 Until 30 Apr",
            backgroundImage: AppImages.discover2,
          ),
          GrabUnlimitedItem(
            title: "Tham gia thử thách đi GrabCar",
            subtitle: 'Thắng quà siêu "cool"',
            backgroundImage: AppImages.discover3,
          ),
          GrabUnlimitedItem(
            title: "Gửi yêu thương đến mọi miền Tổ Quốc",
            subtitle: "",
            backgroundImage: AppImages.discover4,
          ),
          GrabUnlimitedItem(
            title: "Aiiiii muốn hạ hỏa thì ghé vào đây",
            subtitle: "📖 5 min read",
            backgroundImage: AppImages.discover5,
          ),
          GrabUnlimitedItem(
            title: "Mua ngay Bảo hiểm TNDS ô tô, xe máy",
            subtitle: "🗓 Until 30 Jun",
            backgroundImage: AppImages.discover6,
          ),
          GrabUnlimitedItem(
            title: "Ngồi mát Grab giao",
            subtitle: "by GrabFood & GrabMart",
            backgroundImage: AppImages.discover7,
          ),
          GrabUnlimitedItem(
            title: "😋 Giải khát cùng MayCha",
            subtitle: "Ngồi mát Grab giao",
            backgroundImage: AppImages.discover8,
          ),
          GrabUnlimitedItem(
            title: "😲 McDonald's khao 50% Big Mac",
            subtitle: "Ngồi mát Grab giao",
            backgroundImage: AppImages.discover9,
          ),
          GrabUnlimitedItem(
            title: "Ưu đãi nổi bật trong tuần",
            subtitle: "📖 1 min read",
            backgroundImage: AppImages.discover10,
          ),
          GrabUnlimitedItem(
            title: "Ưu đãi ngân hàng - dùng thẻ/ví Moca",
            subtitle: "Thanh toán không tiền mặt",
            backgroundImage: AppImages.discover11,
          ),
          GrabUnlimitedItem(
            title: "Các vị trí tuyển dụng của Grab",
            subtitle: "🗓 Until 30 Jun",
            backgroundImage: AppImages.discover12,
          ),
        ],
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
          _configCollection(context),
        ],
      ),
    );
  }
}
