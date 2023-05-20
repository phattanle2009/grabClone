import 'package:flutter/material.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/view/scan/scan_cart_item.dart';

class ScanPageBody extends StatelessWidget {
  final String name;

  ScanPageBody({
    required this.name,
  });

  Widget _config(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          _builHeader(),
          Positioned(
            top: AppDimensions.bannerSize - AppDimensions.largeSize,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: double.maxFinite,
              child: _buildBody(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.largeSize,
                vertical: AppDimensions.largestSize,
              ),
              child: Text(
                "Can't activate your wallet? Request for a refund of your Moca balance on Grab app here.",
                style: AppTextStyles.bigBoldFont,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _builHeader() {
    return Container(
      width: double.infinity,
      height: AppDimensions.bannerSize,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.lighterBlue.withOpacity(.8),
            Colors.white.withOpacity(.1),
          ],
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          stops: [0.1, 0.8],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.mediumSize,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDimensions.mediumHeightSpace,
            Text(
              "Hello $name!",
              style: AppTextStyles.biggestBoldFont,
            ),
            AppDimensions.mediumHeightSpace,
            Text(
              "Go cashless by selecting from the options below.",
              style: AppTextStyles.bigMediumFont,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      minimum: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScanCartItem(
            title: "Activate Moca Wallet",
            subtitle:
                "Make cashless payments for rides, food, and more. Verify your profile to get started.",
            imageName: AppImages.mocaSquare2,
            buttonTitle: "Start Now",
          ),
          AppDimensions.mediumHeightSpace,
          ScanCartItem(
            title: "Pay Directly With Cards",
            subtitle: "Visa / MasterCard / Amex / ATM / JCB are supported.",
            imageName: AppImages.mocaSquare1,
            buttonTitle: "Manage Card",
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config(context);
  }
}
