import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';

class HomeTextFieldHeader extends StatelessWidget {
  const HomeTextFieldHeader({super.key});

  Widget textfield() {
    return Row(
      children: [
        SizedBox.square(
          dimension: 60,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 15,
                ),
              ],
            ),
            child: Image.asset(
              AppIcons.scanner,
              width: 26,
              height: 26,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 15,
                ),
              ],
            ),
            child: Row(
              children: [
                AppDimensions.mediumWidthSpace,
                Image.asset(
                  AppIcons.search,
                  width: 26,
                  height: 26,
                ),
                AppDimensions.mediumWidthSpace,
                const Expanded(
                    child: Text(
                  "Search the Grab!",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.lightGray,
                  ),
                )),
                Container(
                  color: AppColors.lightGray,
                  width: 1,
                  height: 60,
                ),
                AppDimensions.mediumWidthSpace,
                Image.asset(
                  AppIcons.heart,
                  width: 26,
                  height: 26,
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
          top: 45,
          child: Container(
            color: Colors.white,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: textfield(),
        ),
      ],
    );
  }
}
