import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';
import 'package:grab_clone/feature/home/view/search/search_location_state.dart';

class SearchLocationPageBloc extends Bloc {
  final _controller = StreamController<SearchLocationState>();
  late Stream<SearchLocationState> searchState;

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
    _controller.sink.add(state);
  }
}
