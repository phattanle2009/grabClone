class AppImages {
  static String get activityEmpty => "activity_empty".path;
  static String get banner1 => "banner1".path;
}

extension AppImagesPath on String {
  String get path => 'assets/image/$this.png';
}
