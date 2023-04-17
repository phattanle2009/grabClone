import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/payment/item/large_button_item.dart';
import 'package:grab_clone/feature/payment/item/small_button_item.dart';

class PaymentButtonSection extends StatelessWidget {
  const PaymentButtonSection({super.key});

  Widget _renderButtons() {
    return Container(
      height: 50,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 4),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SmallButtonItem(title: "Top up", imageName: AppIcons.walletPlus),
            AppDimensions.smallWidthSpace,
            SmallButtonItem(title: "Scan to Pay", imageName: AppIcons.scanner),
            AppDimensions.smallWidthSpace,
            SmallButtonItem(title: "Send", imageName: AppIcons.arrowUp),
            AppDimensions.smallWidthSpace,
            SmallButtonItem(title: "Withdraw", imageName: AppIcons.bank),
            AppDimensions.smallWidthSpace,
            SmallButtonItem(title: "Add Card", imageName: AppIcons.creditCard),
          ],
        ),
      ),
    );
  }

  Widget _config() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          LargeButtonItem(),
          AppDimensions.mediumHeightSpace,
          _renderButtons(),
          AppDimensions.mediumHeightSpace,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 1,
            decoration: BoxDecoration(
              color: AppColors.lighterGrey,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config();
  }
}
