import 'package:flutter/material.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/dimensions.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  Widget _config() {
    return Container(
      height: AppDimensions.bannerSize,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimensions.smallPadding),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: AppDimensions.mediumSize,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: AppDimensions.mediumSize,
                      top: AppDimensions.largeSize,
                    ),
                    child: Text(
                      "Activate your Moca\nWallet to enjoy\ncashless payments",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(AppDimensions.mediumSize),
                    child: Text(
                      "Activate Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: AppDimensions.smallerSize),
            child: Image.asset(
              AppImages.moca,
              height: AppDimensions.bannerSize,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config();
  }
}
