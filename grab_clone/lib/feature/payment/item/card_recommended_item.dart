import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';

class CardRecommendedItem extends StatelessWidget {
  String title;
  String imageName;
  List<Color> colors;

  CardRecommendedItem({
    required this.title,
    required this.imageName,
    required this.colors,
  });

  Widget _config(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 16 - 8,
      height: MediaQuery.of(context).size.width / 2 - 16 - 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimensions.smallBorder),
        ),
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: AppDimensions.smallerPadding,
                top: AppDimensions.smallerPadding,
                right: AppDimensions.smallerPadding,
                bottom: AppDimensions.smallPadding,
              ),
              child: Text(
                title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: AppDimensions.smallerPadding,
            ),
            child: Image.asset(
              imageName,
              width: AppDimensions.avatarSize,
              height: AppDimensions.avatarSize,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config(context);
  }
}
