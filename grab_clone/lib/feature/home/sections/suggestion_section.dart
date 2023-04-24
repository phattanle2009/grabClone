import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/model/suggestion_model.dart';
import 'package:grab_clone/feature/home/sections/items/suggestion_card_item.dart';

class SuggestionSection extends StatelessWidget {
  String sectionHeader;
  List<SuggestionModel> list;

  SuggestionSection({
    required this.sectionHeader,
    required this.list,
  });

  Widget _sectionHeader() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
        vertical: AppDimensions.mediumSize,
      ),
      child: Row(
        children: [
          Text(
            sectionHeader,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          AppDimensions.smallWidthSpace,
          Container(
            width: AppDimensions.imageMediumSize,
            height: AppDimensions.imageMediumSize,
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.smallestPadding,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
            child: Image.asset(
              AppIcons.fastForward,
              width: AppDimensions.imageSmallSize,
              height: AppDimensions.imageSmallSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.5,
      color: Colors.white,
      child: ListView.separated(
        separatorBuilder: (context, index) => AppDimensions.smallWidthSpace,
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.mediumSize,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return SuggestionCartItem(
            title: list[index].merchantName,
            imageName: list[index].imageName,
            distance: list[index].distance,
            rating: list[index].rating,
            cost: list[index].cost,
            hotLabel: list[index].hotLabel,
            width: MediaQuery.of(context).size.width,
          );
        },
      ),
    );
  }

  Widget _config(BuildContext context) {
    return Column(
      children: [
        _sectionHeader(),
        _buildBody(context),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config(context);
  }
}
