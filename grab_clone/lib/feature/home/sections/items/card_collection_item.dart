import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/icon.dart';

class CardCollectionItem extends StatelessWidget {
  String title;
  String subTitle;
  String imageName;

  CardCollectionItem({
    required this.title,
    required this.subTitle,
    required this.imageName,
  });

  Widget _configItem() {
    return AspectRatio(
      aspectRatio: 2.5,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: AppColors.lighterGrey,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.left,
                maxLines: 1,
                style: const TextStyle(fontWeight: FontWeight.w300),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      subTitle,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(
                    imageName,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _configItem();
  }
}
