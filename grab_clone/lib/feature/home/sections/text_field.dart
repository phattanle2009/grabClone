import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

class HomeTextFieldHeader extends StatelessWidget {
  Widget _animatedText() {
    return Text(
      "Search the Grab!",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: AppDimensions.mediumSize,
        color: AppColors.lightGray,
      ),
    );
  }

  Widget textfield() {
    return Row(
      children: [
        SizedBox.square(
          dimension: AppDimensions.bigSize,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(AppDimensions.smallBorder),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: AppDimensions.mediumSize,
                ),
              ],
            ),
            child: Image.asset(
              AppIcons.scanner,
              width: AppDimensions.imageLargeSize,
              height: AppDimensions.imageLargeSize,
            ),
          ),
        ),
        AppDimensions.smallerWidthSpace,
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(AppDimensions.smallBorder),
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
              children: [
                AppDimensions.mediumWidthSpace,
                Image.asset(
                  AppIcons.search,
                  width: AppDimensions.imageLargeSize,
                  height: AppDimensions.imageLargeSize,
                ),
                AppDimensions.mediumWidthSpace,
                Expanded(
                  child: _animatedText(),
                ),
                Container(
                  color: AppColors.lightGray,
                  width: 1,
                  height: AppDimensions.bigSize,
                ),
                AppDimensions.mediumWidthSpace,
                Image.asset(
                  AppIcons.heart,
                  width: AppDimensions.imageLargeSize,
                  height: AppDimensions.imageLargeSize,
                ),
                AppDimensions.mediumWidthSpace,
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: AppDimensions.largestSize,
          child: Container(
            color: Colors.white,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.mediumSize,
            vertical: AppDimensions.mediumSize,
          ),
          child: textfield(),
        ),
      ],
    );
  }
}
