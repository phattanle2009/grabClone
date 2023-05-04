import 'dart:async';

abstract class Bloc {
  /// Binding controller when values are changed.
  void bindingController();

  /// Have to use this to dispose all stream controller used.
  void dispose();
}

extension StreamControllerExtension on StreamController {
  void notifyValue<T extends Object?>(T value) {
    if (this.isClosed) return;
    this.sink.add(value);
  }
}