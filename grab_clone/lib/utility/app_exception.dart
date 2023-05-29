class AppException implements Exception {
  final int code;
  final String message;

  AppException(this.code, this.message);

  @override
  String toString() {
    return "$message";
  }
}
