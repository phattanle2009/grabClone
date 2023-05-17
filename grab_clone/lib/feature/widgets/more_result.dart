import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class MoreResultButton extends StatelessWidget {
  final String title;

  MoreResultButton({
    required this.title,
  });

  Widget _buildButton() {
    return InkWell(
      onTap: () {
        print(title);
      },
      child: Container(
        height: AppDimensions.customButtonHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.bigMediumFont.copyWith(
              color: AppColors.lighterBlue,
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
