import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/feature/widgets/primary_button.dart';

class ScheduleBottomModal {
  static void showBottomModal(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: AppDimensions.largeSize,
          ),
          color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                AppImages.scheduleBannerModal,
                height: AppDimensions.bannerSize,
              ),
              AppDimensions.mediumHeightSpace,
              Text(
                "Find scheduled bookings in Activity",
                style: AppTextStyles.bigBoldFont,
              ),
              AppDimensions.smallHeightSpace,
              Text(
                "Everything you do on Grab is now in one place!",
                style: AppTextStyles.smallMediumFont,
              ),
              AppDimensions.mediumHeightSpace,
              PrimaryButtonWidget(
                title: "Go to Activity",
                borderRadius: AppDimensions.smallBorder,
                height: AppDimensions.customButtonHeight,
                width: MediaQuery.of(context).size.width -
                    AppDimensions.mediumSize * 2,
              ),
              AppDimensions.mediumHeightSpace,
            ],
          ),
        );
      },
    );
  }
}
