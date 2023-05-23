import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/home/sections/suggestion_section.dart';
import 'package:grab_clone/feature/home/view/favourite/favourite_bloc.dart';
import 'package:grab_clone/feature/home/view/favourite/items/top_favourite_item.dart';

class RewardMemberPage extends StatefulWidget {
  const RewardMemberPage({super.key});

  @override
  State<RewardMemberPage> createState() => _RewardMemberPageState();
}

class _RewardMemberPageState extends State<RewardMemberPage> {
  final _bloc = FavouritePageBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  Widget text(String text) {
    return Text(text);
  }

  Widget _configHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.smallPadding,
        horizontal: AppDimensions.mediumSize,
      ),
      child: Text(
        "Ride to Saved Places",
        style: AppTextStyles.bigBoldFont,
      ),
    );
  }

  DefaultTabController _buildAppBar(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leadingWidth: AppDimensions.customButtonHeight,
          leading: Padding(
            padding: EdgeInsets.all(AppDimensions.smallSize),
            child: InkWell(
              onTap: () {
                context.pop();
              },
              child: Image.asset(AppIcons.leftArrow),
            ),
          ),
          title: const Text(
            'Favourites',
            style: AppTextStyles.bigBoldFont,
          ),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _configHeader(),
                TopFavouriteItem(),
                SuggestionSection(
                  sectionHeader: "Top choices from others",
                  list: Mock.restaurants,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAppBar(context);
  }
}
