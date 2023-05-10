import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grab_clone/bloc/bloc.dart';
import 'package:grab_clone/feature/home/view/search/search_location_state.dart';

class SearchLocationPageBloc extends Bloc {
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
    _controller.close();
    searchController.dispose();
  }

  void changeOffset(SearchLocationState currentState, double offset) {
    var state = currentState;
    state.isShowShadow = offset != 0;
    state.scrolledOffset = offset;
    _controller.sink.add(state);
  }

  void changeSearchTitle(SearchLocationState currentState, String value) {
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
