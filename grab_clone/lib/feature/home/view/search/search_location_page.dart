import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/view/search/item/search_location_item.dart';
import 'package:grab_clone/feature/home/view/search/search_location_navigation.dart';

class SearchLocationPage extends StatefulWidget {
  const SearchLocationPage({super.key});

  @override
  State<SearchLocationPage> createState() => _SearchLocationPageState();
}

class _SearchLocationPageState extends State<SearchLocationPage> {
  String _navigationTitle = "Pick Up/Drop Off Gate";
  bool isSearchSuggestion = true;
  bool isShowShadow = false;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      isShowShadow = _scrollController.offset != 0;
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildAppBar(BuildContext context) {
    var list = Mock.searchItems;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchLocationNavigation(
              navigationTitle: _navigationTitle,
              isSearchSuggestion: isSearchSuggestion,
            ),
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: list.length,
                padding: const EdgeInsets.symmetric(horizontal: AppDimensions.mediumSize),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return SearchLocationItem(
                    title: list[index].title,
                    address: list[index].detailAddress ?? "",
                    type: list[index].type,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAppBar(context);
  }
}
