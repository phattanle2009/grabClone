import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';

class ProfileSectionLabel extends StatelessWidget {
  String title;

  ProfileSectionLabel({
    required this.title,
  });

  Widget _config() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.largeSize),
      child: Text(
        title,
        style: AppTextStyles.bigBoldFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config();
  }
}
