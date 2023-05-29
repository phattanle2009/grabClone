class AppImages {
  static String get sky => "sky".path;
  static String get key => "keys".path;
  static String get moca => "moca".path;
  static String get bill => "bill".path;
  static String get pig1 => "pig1".path;
  static String get splash => "splash".path;
  static String get avatar => "avatar".path;
  static String get banner1 => "banner1".path;
  static String get banner2 => "banner2".path;
  static String get banner3 => "banner3".path;
  static String get mailBox => "mail_box".path;
  static String get chicken1 => "chicken1".path;
  static String get chicken2 => "chicken2".path;
  static String get chicken3 => "chicken3".path;
  static String get discover1 => "discover1".path;
  static String get discover2 => "discover2".path;
  static String get discover3 => "discover3".path;
  static String get discover4 => "discover4".path;
  static String get discover5 => "discover5".path;
  static String get discover6 => "discover6".path;
  static String get discover7 => "discover7".path;
  static String get discover8 => "discover8".path;
  static String get discover9 => "discover9".path;
  static String get discover10 => "discover10".path;
  static String get discover11 => "discover11".path;
  static String get discover12 => "discover12".path;
  static String get helpCentre => "help_centre".path;
  static String get mocaSquare2 => "moca_money".path;
  static String get mocaSquare1 => "moca_banner".path;
  static String get activityEmpty => "activity_empty".path;
  static String get emergencyEmpty => "emergency_empty".path;
  static String get grabUnlimited1 => "grab_unlimited_1".path;
  static String get grabUnlimited2 => "grab_unlimited_2".path;
  static String get scheduleBannerModal => "schedule_banner_modal".path;
}

extension AppImagesPath on String {
  String get path => 'assets/image/$this.png';
}
