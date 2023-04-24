import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';

class CircularCollectionItem extends StatelessWidget {
  String title;
  String imageName;
  final Function onPressed;

  CircularCollectionItem({
    required this.title,
    required this.imageName,
    required this.onPressed,
  });

  InkWell _configItem() {
    return InkWell(
      onTap: () => onPressed,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: AppDimensions.largestSize,
                width: AppDimensions.largestSize,
                decoration: const BoxDecoration(
                  color: AppColors.lightGreen,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox.square(
                dimension: 40,
                child: Image.asset(
                  imageName,
                ),
              ),
            ],
          ),
          AppDimensions.smallerWidthSpace,
          SizedBox.fromSize(
            size: Size(60, 18),
            child: Text(title, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _configItem();
  }
}
