import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/text.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final double borderRadius;

  PrimaryButtonWidget({
    required this.title,
    required this.width,
    required this.height,
    required this.borderRadius,
  });

  Widget _buildButton() {
    return InkWell(
      onTap: () {
        print(title);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        width: width,
        height: height,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.bigBoldFont.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildButton();
  }
}