import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';
import 'package:grab_clone/feature/account/account_page.dart';

class TabbarBloc extends Bloc {
  final _controller = StreamController<int>();
  late Stream<int> aResult;
  var arg = MenuType.none;

  TabbarBloc() {
    bindingController();
  }
  @override
  void bindingController() {
    aResult = _controller.stream.map((event) => event);
  }

  @override
  void dispose() {
    _controller.close();
  }

  // Function
  void changeTabbar({required int index, MenuType argument = MenuType.none}) {
    arg = argument;
    _controller.notifyValue(index);
  }
}
