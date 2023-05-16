import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';

class HomePageBloc extends Bloc {
  final _controller = StreamController<String>();
  late Stream<String> result;

  HomePageBloc() {
    bindingController();
  }
  @override
  void bindingController() {
    _typeWrittingAnimation();
    result = _controller.stream.map((event) => event);
  }

  @override
  void dispose() {
    _controller.close();
  }

  int _currentIndex = 0;
  int _currentCharIndex = 0;

  final List<String> _strings = [
    "Search the Grab!",
    "Near me",
    "Hot saler!!!",
    "Ăn vặt",
    "Bữa sáng",
    "Bữa trưa",
    "Bữa chiều",
    "Bữa tối 0đ",
  ];

  void _typeWrittingAnimation() {
    if (_currentCharIndex < _strings[_currentIndex].length) {
      _currentCharIndex++;
    } else {
      Timer(Duration(seconds: 3), () {
        _currentIndex = (_currentIndex + 1) % _strings.length;
        _currentCharIndex = 0;
      });
    }

    Future.delayed(const Duration(milliseconds: 150), () {
      _typeWrittingAnimation();
    });

    var rs = _strings[_currentIndex].substring(0, _currentCharIndex);
    _controller.sink.add(rs);
  }
}
