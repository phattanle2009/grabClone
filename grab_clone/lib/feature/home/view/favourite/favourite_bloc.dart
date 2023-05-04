import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';

class FavouritePageBloc extends Bloc {
  final _aController = StreamController<String>();
  late Stream<String> aResult;

  FavouritePageBloc() {
    bindingController();
    _loadA();
  }
  @override
  void bindingController() {
    aResult = _aController.stream.map((event) => event);
  }

  @override
  void dispose() {
    _aController.close();
  }

  void _loadA() {
    Future.delayed(Duration(seconds: 5)).then((value) => {_aController.notifyValue("Loaded a")});
  }
}
