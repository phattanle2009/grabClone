import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/widgets/search_bar.dart';
import 'package:grab_clone/feature/widgets/tag_label.dart';

class SearchLocationPage extends StatefulWidget {
  const SearchLocationPage({super.key});

  @override
  State<SearchLocationPage> createState() => _SearchLocationPageState();
}

class _SearchLocationPageState extends State<SearchLocationPage> {
  String _navigationTitle = "Pick Up/Drop Off Gate";

  Widget _configLeading(BuildContext context) {
    return Container(
      child: Row(
        children: [
          AppDimensions.smallWidthSpace,
          InkWell(
            onTap: () {
              context.pop();
            },
            child: Image.asset(
              AppIcons.leftArrow,
              width: AppDimensions.largeSize,
            ),
          ),
          AppDimensions.smallWidthSpace,
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your location",
                  style: AppTextStyles.smallerMediumFont,
                ),
                AppDimensions.smallerHeightSpace,
                Container(
                  height: AppDimensions.mediumSize,
                  child: Row(
                    children: [
                      Image.asset(
                        AppIcons.location,
                        width: 16,
                      ),
                      AppDimensions.smallerWidthSpace,
                      Text(
                        _navigationTitle,
                        style: AppTextStyles.smallBoldFont,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _listSearchTags() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
      ),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TagLabel(text: "All", isFill: true),
          AppDimensions.smallerWidthSpace,
          TagLabel(text: "Destinations"),
          AppDimensions.smallerWidthSpace,
          TagLabel(text: "Restaurant"),
          AppDimensions.smallerWidthSpace,
          TagLabel(text: "Groceries and supplies"),
        ],
      ),
    );
  }

  DefaultTabController _buildAppBar(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          centerTitle: false,
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          leading: _configLeading(context),
          leadingWidth: MediaQuery.of(context).size.width,
          bottom: PreferredSize(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchBarWidget(
                    height: AppDimensions.navigationBarHeight,
                  ),
                  AppDimensions.smallHeightSpace,
                  _listSearchTags(),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(50),
          ),
        ),
        body: Container(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAppBar(context);
  }
}
