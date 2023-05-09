import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';

class SearchLocationPageBloc extends Bloc {
  final _showShadowController = StreamController<String>();
  late Stream<String> isShowShadow;

  SearchLocationPageBloc() {
    bindingController();
  }
  @override
  void bindingController() {
    isShowShadow = _showShadowController.stream.map((event) => event);
  }

  @override
  void dispose() {
    _showShadowController.close();
  }

  void change(String value) {
    _showShadowController.sink.add(value);
  }
}
