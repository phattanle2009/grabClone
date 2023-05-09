import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/view/search/item/search_location_item.dart';
import 'package:grab_clone/feature/home/view/search/search_location_navigation.dart';
import 'package:grab_clone/feature/home/view/search/search_location_page_bloc.dart';

class SearchLocationPage extends StatefulWidget {
  const SearchLocationPage({super.key});

  @override
  State<SearchLocationPage> createState() => _SearchLocationPageState();
}

class _SearchLocationPageState extends State<SearchLocationPage> {
  String _navigationTitle = "Pick Up/Drop Off Gate";
  bool isSearchSuggestion = true;
  ScrollController _scrollController = ScrollController();
  final _searchLocationPageBloc = SearchLocationPageBloc();

  @override
  void initState() {
    _scrollController.addListener(() {
      _searchLocationPageBloc.change("${_scrollController.offset != 0}");
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchLocationPageBloc.dispose();
    super.dispose();
  }

  Widget _buildAppBar(BuildContext context) {
    var list = Mock.searchItems;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StreamBuilder(
              stream: _searchLocationPageBloc.isShowShadow,
              builder: (context, snapshot) {
                final data = snapshot.data ?? "";
                return SearchLocationNavigation(
                  navigationTitle: _navigationTitle,
                  isSearchSuggestion: isSearchSuggestion,
                  isShowShadow: data == "true",
                );
              },
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
