class AppIcons {
  static String get activity => "activity".path;
  static String get activityFilled => "activity_filled".path;
  static String get bike => "bike".path;
  static String get car => "car".path;
  static String get messageFilled => "comment_filled".path;
  static String get message => "comment".path;
  static String get express => "express".path;
  static String get food => "food".path;
  static String get heart => "heart".path;
  static String get history => "history".path;
  static String get homeFilled => "home_filled".path;
  static String get home => "home".path;
  static String get scanner => "scanner".path;
  static String get search => "search".path;
  static String get userFilled => "user_filled".path;
  static String get user => "user".path;
  static String get vegetable => "vegetables".path;
  static String get walletFilled => "wallet_filled".path;
  static String get wallet => "wallet".path;
  static String get subcriptions => "badge".path;
  static String get offer => "money".path;
  static String get reward => "offer".path;
  static String get topup => "phone".path;
  static String get challenge => "trophy".path;
  static String get userColorful => "user_colorful".path;
  static String get paypal => "paypal".path;
  static String get dollar => "dollar".path;
  static String get fastForward => "fast_forward".path;
  static String get star => "star".path;
  static String get fire => "fire".path;
  static String get trash => "bin".path;
  static String get tag => "tag".path;
  static String get setting => "setting".path;
  static String get walletPlus => "wallet_plus".path;
  static String get arrowUp => "arrow_up".path;
  static String get bank => "bank".path;
  static String get creditCard => "credit_card".path;
  static String get rightArrow => "right_arrow".path;
  static String get queen => "queen".path;
}

extension AppIconsPath on String {
  String get path => 'assets/icon/$this.png';
}
