import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

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
            style: TextStyle(
              color: AppColors.lighterBlue,
              fontWeight: FontWeight.w500,
              fontSize: AppDimensions.mediumFontSize,
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
