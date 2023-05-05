import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

class TagLabel extends StatelessWidget {
  String text;
  bool isFill;

  TagLabel({
    required this.text,
    this.isFill = false,
  });

  Widget _tags() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: isFill ? AppColors.lightBlue : null,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: AppDimensions.smallerFontSize,
          color: isFill ? AppColors.mediumGreen : AppColors.lightGray,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _tags();
  }
}
