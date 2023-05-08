import 'package:grab_clone/feature/home/view/search/item/search_location_item.dart';

class SuggestionSearchModel {
  String title;
  String? detailAddress;
  SuggestionSearchLocationType type;

  SuggestionSearchModel({
    required this.title,
    this.detailAddress = "",
    required this.type,
  });
}
