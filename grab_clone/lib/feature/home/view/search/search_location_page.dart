import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/view/search/search_list.dart';
import 'package:grab_clone/feature/home/view/search/search_location_state.dart';
import 'package:grab_clone/feature/home/view/search/search_location_page_bloc.dart';
import 'package:grab_clone/feature/home/view/search/item/search_location_item.dart';
import 'package:grab_clone/feature/home/view/search/search_location_navigation.dart';

class SearchLocationPage extends StatefulWidget {
  const SearchLocationPage({super.key});

  @override
  State<SearchLocationPage> createState() => _SearchLocationPageState();
}

class _SearchLocationPageState extends State<SearchLocationPage> {
  bool isSearchSuggestion = true;
  ScrollController _listSearchScrollController = ScrollController();
  ScrollController _listSuggestionScrollController = ScrollController();
  final _searchLocationPageBloc = SearchLocationPageBloc();
  var _searchLocationState = SearchLocationState();

  @override
  void initState() {
    _listSuggestionScrollController.addListener(
      () {
        _searchLocationPageBloc.handleScrollAction(
          _searchLocationState,
          _listSuggestionScrollController.offset,
        );
      },
    );
    _listSearchScrollController.addListener(
      () {
        _searchLocationPageBloc.handleScrollAction(
          _searchLocationState,
          _listSearchScrollController.offset,
        );
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _listSearchScrollController.dispose();
    _listSuggestionScrollController.dispose();
    _searchLocationPageBloc.dispose();
    super.dispose();
  }

  Widget _buildListItem(bool isSuggestionSearch) {
    if (isSuggestionSearch) {
      var list = Mock.searchItems;
      return ListView.builder(
        controller: _listSuggestionScrollController,
        itemCount: list.length,
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.mediumSize,
        ),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return SearchLocationItem(
            title: list[index].title,
            address: list[index].detailAddress ?? "",
            type: list[index].type,
          );
        },
      );
    } else {
      return SearchList(scrollController: _listSearchScrollController);
    }
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder(
      stream: _searchLocationPageBloc.searchState,
      builder: (context, snapshot) {
        final data = snapshot.data ?? SearchLocationState();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchLocationNavigation(
              navigationTitle: data.searchNavigationTitle,
              isSearchSuggestion: data.isSuggestionSearch,
              isShowShadow: data.isShowShadow,
              isShowSearchBar: data.isShowSearchBar,
              selectedLabel: data.selectedLabel,
              searchController: _searchLocationPageBloc.searchController,
              onCleared: () {
                _searchLocationPageBloc.searchController.clear();
                _searchLocationPageBloc.changeSuggestionSearch(
                  _searchLocationState,
                  true,
                );
              },
              onSubmitted: (value) => _searchLocationPageBloc.changeSuggestionSearch(
                _searchLocationState,
                value == "",
              ),
              onTappedLabel: (value) {
                _searchLocationPageBloc.selectedLabel(_searchLocationState, value);
              },
            ),
            Expanded(
              child: _buildListItem(data.isSuggestionSearch),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _buildBody(context),
      ),
    );
  }
}
