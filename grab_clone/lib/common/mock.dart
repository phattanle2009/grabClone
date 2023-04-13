import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/model/suggestion_model.dart';

class Mock {
  static List<SuggestionModel> restaurants = [
    SuggestionModel(
      merchantName: "Cơm gà Ký Khoa",
      distance: 0.4,
      rating: 4.0,
      hotLabel: "Giảm giá",
      imageName: AppImages.chicken1,
    ),
    SuggestionModel(
      merchantName: "Gà lực sỹ",
      distance: 1.2,
      rating: 4.1,
      hotLabel: "Bữa tối nửa giá",
      imageName: AppImages.chicken2,
    ),
    SuggestionModel(
      merchantName: "Gà hấp hành",
      distance: 1.6,
      rating: 4.7,
      hotLabel: "Nửa giá nha",
      imageName: AppImages.chicken3,
    ),
    SuggestionModel(
      merchantName: "Heo đẹp trai",
      distance: 3.6,
      rating: 4.9,
      hotLabel: "Sale sập sàn",
      imageName: AppImages.pig1,
    ),
  ];

  static List<SuggestionModel> foods = [
    SuggestionModel(
      merchantName: "Heo đẹp trai",
      distance: 3.6,
      rating: 4.9,
      cost: 7000000,
      hotLabel: "Sale sập sàn",
      imageName: AppImages.pig1,
    ),
    SuggestionModel(
      merchantName: "Gà hấp hành",
      distance: 1.6,
      rating: 4.7,
      cost: 150000,
      hotLabel: "Nửa giá nha",
      imageName: AppImages.chicken3,
    ),
    SuggestionModel(
      merchantName: "Cơm gà Ký Khoa",
      distance: 0.4,
      rating: 4.0,
      cost: 45000,
      hotLabel: "Giảm giá",
      imageName: AppImages.chicken1,
    ),
    SuggestionModel(
      merchantName: "Gà lực sỹ",
      distance: 1.2,
      rating: 4.1,
      cost: 80000,
      hotLabel: "Bữa tối nửa giá",
      imageName: AppImages.chicken2,
    ),
  ];
}
