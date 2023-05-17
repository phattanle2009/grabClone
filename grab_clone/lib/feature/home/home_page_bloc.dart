import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';

class SearchText {
  final String text;
  final String drawing;

  SearchText({
    required this.text,
    required this.drawing,
  });
}

class HomePageBloc extends Bloc {
  final _controller = StreamController<SearchText>();
  late Stream<SearchText> result;

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
    "Bữa sáng lành mạnh",
    "Bữa trưa xịn xò",
    "Bữa chiều nhẹ nhàng",
    "Bữa tối 0đ",
  ];

  void _typeWrittingAnimation() {
    if (_currentCharIndex < _strings[_currentIndex].length) {
      _currentCharIndex++;
    } else {
      _currentIndex = (_currentIndex + 1) % _strings.length;
      _currentCharIndex = 0;
    }

    Future.delayed(const Duration(milliseconds: 150), () {
      _typeWrittingAnimation();
    });

    var rs = _strings[_currentIndex].substring(0, _currentCharIndex);
    var search = SearchText(text: _strings[_currentIndex], drawing: rs);
    _controller.sink.add(search);
  }
}
