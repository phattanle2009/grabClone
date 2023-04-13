class SuggestionModel {
  final String merchantName;
  final double distance;
  final double rating;
  final int? cost;
  final String hotLabel;
  final String imageName;

  SuggestionModel({
    required this.merchantName,
    required this.distance,
    required this.rating,
    this.cost,
    required this.hotLabel,
    required this.imageName,
  });
}
