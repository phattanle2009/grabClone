import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grab_clone/bloc/bloc.dart';
import 'package:grab_clone/feature/home/view/search/search_location_state.dart';

class SearchLocationPageBloc extends Bloc {
  Timer? _debounce;
  late Stream<SearchLocationState> searchState;
  final _controller = StreamController<SearchLocationState>();
  final TextEditingController searchController = TextEditingController();

  SearchLocationPageBloc() {
    bindingController();
  }
  
  @override
  void bindingController() {
    searchState = _controller.stream.map((event) => event);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.close();
    searchController.dispose();
  }

  void handleScrollAction(SearchLocationState currentState, double offset) {
    var state = currentState;
    state.isShowShadow = offset != 0;
    if (_debounce?.isActive ?? false) {
      _debounce?.cancel();
    }
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (offset > state.scrolledOffset) {
        state.isShowSearchBar = false;
      } else {
        state.isShowSearchBar = true;
      }
      state.scrolledOffset = offset;
      _controller.sink.add(state);
    });
    _controller.sink.add(state);
  }

  void changeSearchTitle(
    SearchLocationState currentState,
    String value,
  ) {
    var state = currentState;
    state.searchNavigationTitle = value;
    _controller.sink.add(state);
  }

  void changeSuggestionSearch(SearchLocationState currentState, bool value) {
    var state = currentState;
    state.isSuggestionSearch = value;
    if (value == false) {
      state.selectedLabel = "All";
    }
    _controller.sink.add(state);
  }

  void selectedLabel(SearchLocationState currentState, String value) {
    var state = currentState;
    state.selectedLabel = value;
    _controller.sink.add(state);
  }
}
