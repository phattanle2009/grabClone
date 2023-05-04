import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/feature/home/view/favourite/items/places_card_item.dart';

class TopFavouriteItem extends StatelessWidget {
  Widget _buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
      ),
      height: MediaQuery.of(context).size.width * 0.5,
      child: ListView.separated(
        separatorBuilder: (context, index) => AppDimensions.smallWidthSpace,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          if (index == 2) {
            return Padding(
              padding: EdgeInsets.only(
                left: AppDimensions.mediumSize,
              ),
              child: Container(
                width: AppDimensions.customButtonHeight,
                height: AppDimensions.customButtonHeight,
                margin: EdgeInsets.all(AppDimensions.smallSize),
                padding: EdgeInsets.all(AppDimensions.smallestSize),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: AppDimensions.mediumSize,
                    ),
                  ],
                ),
                child: Image.asset(AppIcons.leftDirection),
              ),
            );
          } else {
            return PlacesCardItem(
              title: "gần chợ Thạch Đà",
              address: "549 Điện Biên Phủ, phường 14, quận Bình Thạnh",
            );
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }
}
