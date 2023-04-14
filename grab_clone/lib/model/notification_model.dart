class NotificationModel {
  final String title;
  final String subtitle;
  final String datetime;
  bool asRead;

  NotificationModel({
    required this.title,
    required this.subtitle,
    required this.datetime,
    required this.asRead,
  });

  void markAsRead() {
    this.asRead = true;
  }
}
