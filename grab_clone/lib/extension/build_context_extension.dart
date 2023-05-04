import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Future<T?> pushReplaceNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    return Navigator.pushReplacementNamed(
      this,
      routeName,
      result: result,
      arguments: arguments,
    );
  }

  Future<dynamic> push(Widget screen, [bool isPresent = false]) {
    return Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
        fullscreenDialog: isPresent,
      ),
    );
  }

  void pop<T extends Object?>([T? result]) {
    Navigator.of(this).pop(result);
  }
}