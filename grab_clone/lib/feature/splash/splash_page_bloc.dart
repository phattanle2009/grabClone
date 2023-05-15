import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';

class SplashPageBloc extends Bloc {
  final _controller = StreamController<bool>();
  late Stream<bool?> result;

  SplashPageBloc() {
    bindingController();
    fetchAPI();
  }

  @override
  void bindingController() {
    result = _controller.stream.map((event) {
      return event;
    });
  }

  @override
  void dispose() {
    _controller.close();
  }

  void fetchAPI() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      if (_controller.isClosed) return;
      _controller.sink.add(true);
    });
  }
}
