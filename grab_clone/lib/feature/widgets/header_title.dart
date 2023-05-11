import 'package:flutter/material.dart';
import 'package:grab_clone/constant/text.dart';

class HeaderTitle extends StatelessWidget {
  String sectionHeader;

  HeaderTitle({
    required this.sectionHeader,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      sectionHeader,
      style: AppTextStyles.biggerBoldFont,
    );
  }
}
