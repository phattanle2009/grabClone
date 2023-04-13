class AppImages {
  static String get activityEmpty => "activity_empty".path;
  static String get banner1 => "banner1".path;
  static String get banner2 => "banner2".path;
  static String get banner3 => "banner3".path;
  static String get pig1 => "pig1".path;
  static String get chicken1 => "chicken1".path;
  static String get chicken2 => "chicken2".path;
  static String get chicken3 => "chicken3".path;
}

extension AppImagesPath on String {
  String get path => 'assets/image/$this.png';
}
