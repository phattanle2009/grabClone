import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

class TagLabel extends StatelessWidget {
  String text;
  bool isFill;
  final Function(String) onTappedLabel;

  TagLabel({
    required this.text,
    this.isFill = false,
    required this.onTappedLabel,
  });

  Widget _tags() {
    return InkWell(
      onTap: () => onTappedLabel(text),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 10,
        ),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isFill ? AppColors.lightBlue : null,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: AppDimensions.smallerFontSize,
            color: isFill ? AppColors.darkGeen : AppColors.lightGray,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _tags();
  }
}
