import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';

class SearchLocationNavigationBloc extends Bloc {
  final _controller = StreamController<String>();
  late Stream<String> isShowShadow;

  SearchLocationNavigationBloc() {
    bindingController();
  }
  @override
  void bindingController() {
    isShowShadow = _controller.stream.map((event) => event);
  }

  @override
  void dispose() {
    _controller.close();
  }
}
