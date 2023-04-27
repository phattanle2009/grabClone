import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/feature/payment/item/payment_card.dart';

class PaymentHeaderSection extends StatelessWidget {
  const PaymentHeaderSection({super.key});

  Widget _config(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.sky),
        SafeArea(
          minimum: EdgeInsets.symmetric(
            horizontal: AppDimensions.mediumSize,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Payment',
                        style: AppTextStyles.biggestBoldFont,
                      ),
                    ),
                    SizedBox.square(
                      dimension: AppDimensions.imageMediumSize,
                      child: Image.asset(AppIcons.setting),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppDimensions.imageLargeSize,
                ),
                child: Text(
                  "The simplest and most rewarding\nway to pay",
                  style: AppTextStyles.smallMediumFont,
                ),
              ),
              PaymentCard(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config(context);
  }
}
