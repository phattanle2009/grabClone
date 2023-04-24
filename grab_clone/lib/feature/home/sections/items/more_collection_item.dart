import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';

class MoreCollectionItem extends StatelessWidget {
  String title;
  String? subtitle;
  String iconName;

  MoreCollectionItem({
    required this.title,
    this.subtitle = null,
    required this.iconName,
  });

  Widget _config(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 3 - 16 * 2;

    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        color: AppColors.mediumPink,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(iconName),
          Positioned(
            top: 14,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                subtitle == null
                    ? Container(
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColors.red,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Text(
                          "Xem ngay",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Text(
                        subtitle!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12),
                      ),
              ],
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
