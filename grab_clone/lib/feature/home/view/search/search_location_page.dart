import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/view/search/item/search_location_item.dart';
import 'package:grab_clone/feature/home/view/search/search_location_navigation.dart';
import 'package:grab_clone/feature/home/view/search/search_location_page_bloc.dart';
import 'package:grab_clone/feature/home/view/search/search_location_state.dart';

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
  var _searchLocationState = SearchLocationState();

  @override
  void initState() {
    _scrollController.addListener(() {
      _searchLocationPageBloc.changeOffset(_searchLocationState, _scrollController.offset);
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
              stream: _searchLocationPageBloc.searchState,
              builder: (context, snapshot) {
                final data = snapshot.data ?? SearchLocationState();
                return SearchLocationNavigation(
                  navigationTitle: data.searchNavigationTitle,
                  isSearchSuggestion: data.isSuggestionSearch,
                  isShowShadow: data.isShowShadow,
                  onSubmitted: (value) => _searchLocationPageBloc.changeSuggestionSearch(
                    _searchLocationState,
                    value == "",
                  ),
                  onTappedLabel: (p0) {
                    print(p0);
                  },
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
