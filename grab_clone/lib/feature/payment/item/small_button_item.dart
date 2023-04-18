import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

class SmallButtonItem extends StatelessWidget {
  String title;
  String imageName;

  SmallButtonItem({
    required this.title,
    required this.imageName,
  });

  Widget _config() {
    return Container(
      height: 38,
      // width: 100,
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            imageName,
            color: AppColors.darkGeen,
            width: 20,
            height: 20,
          ),
          AppDimensions.mediumWidthSpace,
          Text(
            title,
            maxLines: 1,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config();
  }
}
