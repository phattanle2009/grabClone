import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/feature/home/view/search/item/search_location_item.dart';
import 'package:grab_clone/model/menu_model.dart';
import 'package:grab_clone/model/notification_model.dart';
import 'package:grab_clone/model/suggestion_model.dart';
import 'package:grab_clone/model/suggestion_search_model.dart';

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

  static List<NotificationModel> notifications = [
    NotificationModel(
      title: "😱Đừng để bảo hiểm xe hết hạn!!!",
      subtitle: "Nhấp vào mua ngay! Bao lẹ, bao chill ~",
      datetime: "10:39 AM",
      asRead: true,
    ),
    NotificationModel(
      title: "🛣Thêm an tâm khi di chuyển",
      subtitle: "Bật Ride Cover - chỉ 2.000đ/chuyến",
      datetime: "9 Apr",
      asRead: false,
    ),
    NotificationModel(
      title: "Đi chợ online sống xanh cùng Grab",
      subtitle: "",
      datetime: "9 Apr",
      asRead: true,
    ),
    NotificationModel(
      title: "🤱GrabMart tặng mẹ ưu đãi x5",
      subtitle: "",
      datetime: "8 Apr",
      asRead: true,
    ),
    NotificationModel(
      title: "Homefarm ưu đãi đến 100.000đ",
      subtitle: "Voucher giảm đến 100.000đ",
      datetime: "8 Apr",
      asRead: true,
    ),
    NotificationModel(
      title: "Ngồi mát đặt trái cây mát lạnh",
      subtitle: "Giảm đến 40.000đ & free ship",
      datetime: "8 Apr",
      asRead: false,
    ),
    NotificationModel(
      title: "Tươi rẻ mỗi ngày, GrabMart gia tăng voucher",
      subtitle: "Giảm đến 50% + 130k",
      datetime: "7 Apr",
      asRead: false,
    ),
    NotificationModel(
      title: "Ghé TH True Milk nhận ưu đãi",
      subtitle: "Bồi dưỡng sữa tươi cho con bạn đến trường",
      datetime: "7 Apr",
      asRead: true,
    ),
    NotificationModel(
      title: "😱 Đừng để bảo hiểm xe hết hạn!!!",
      subtitle: "Nhấp vào mua ngay! Bao lẹ, bao chill ~",
      datetime: "7 Apr",
      asRead: false,
    ),
    NotificationModel(
      title: "🛣 Thêm an tâm khi di chuyển",
      subtitle: "Bật Ride Cover - chỉ 2.000đ/chuyến",
      datetime: "7 Apr",
      asRead: false,
    ),
    NotificationModel(
      title: "Đi chợ online sống xanh cùng Grab",
      subtitle: "Giảm đến 50% + 130k",
      datetime: "6 Apr",
      asRead: false,
    ),
  ];

  static List<MenuModel> menuItems = [
    MenuModel(
      title: "For more value",
      isHeaderTitle: true,
    ),
    MenuModel(
      title: "Rewards",
    ),
    MenuModel(
      title: "Subscriptions",
      label: "New",
      backgroundColorForLabel: AppColors.red,
    ),
    MenuModel(
      title: "Challenges",
    ),
    MenuModel(
      title: "Referrals",
      label: "New",
      backgroundColorForLabel: AppColors.red,
    ),
    MenuModel(
      title: "My account",
      isHeaderTitle: true,
    ),
    MenuModel(
      title: "Rewards Member",
      leadingIconName: AppIcons.queen,
      label: "0 Points",
      labelColor: AppColors.lightGray,
    ),
    MenuModel(
      title: "Favourites",
      label: "New",
      backgroundColorForLabel: AppColors.red,
    ),
    MenuModel(
      title: "Payment Methods",
    ),
    MenuModel(
      title: "Scheduled",
    ),
    MenuModel(
      title: "Saved Places",
    ),
    MenuModel(
      title: "Emergency Contacts",
    ),
    MenuModel(
      title: "Business Account",
    ),
    MenuModel(
      title: "General",
      isHeaderTitle: true,
    ),
    MenuModel(
      title: "Help Centre",
    ),
    MenuModel(
      title: "Settings",
    ),
    MenuModel(
      title: "Share Feedback",
    ),
    MenuModel(
      title: "Opportunities",
      isHeaderTitle: true,
    ),
    MenuModel(
      title: "Support the Environment",
      label: "New",
      backgroundColorForLabel: AppColors.red,
    ),
    MenuModel(
      title: "Drive With Grab",
    ),
  ];

  static List<SuggestionSearchModel> searchItems = [
    SuggestionSearchModel(
      title: "tan son nhat internation airport",
      type: SuggestionSearchLocationType.searchText,
    ),
    SuggestionSearchModel(
      title: "airport",
      type: SuggestionSearchLocationType.searchText,
    ),
    SuggestionSearchModel(
      title: "bánh cuốn",
      type: SuggestionSearchLocationType.searchText,
    ),
    SuggestionSearchModel(
      title: "cơm sườn ngon",
      type: SuggestionSearchLocationType.searchText,
    ),
    SuggestionSearchModel(
      title: "781 Âu Cơ",
      detailAddress: "781 Âu Cơ, P.Tân Thành, Q.Tân Phú, Hồ Chí Minh, 700000, Việt Nam",
      type: SuggestionSearchLocationType.recently,
    ),
    SuggestionSearchModel(
      title: "65/7 Street No.14",
      detailAddress: "65/7 Đường số 14, P.11, Q.Gò Vấp, Hồ Chí Minh, 700000, VietNam",
      type: SuggestionSearchLocationType.recently,
    ),
    SuggestionSearchModel(
      title: "West Coach Station",
      detailAddress: "295 Kinh Dương Vương, P.An Lạc, Q.Bình Tân, Hồ Chí Minh, 700000, VietNam",
      type: SuggestionSearchLocationType.recently,
    ),
    SuggestionSearchModel(
      title: "Công ty TNHH Nakano Precision - Nakano Precision Co.,LTD",
      detailAddress: "Lô III-3B Đường 12, Nhóm Công nghiệp III, KCN Linh Xuân, Thành Phố Thủ Đức",
      type: SuggestionSearchLocationType.destination,
    ),
    SuggestionSearchModel(
      title: "Naked sushi",
      detailAddress: "193A/6 Trần Quang Diệu, P.14, Q.3, Hồ Chí Minh",
      type: SuggestionSearchLocationType.destination,
    ),
    SuggestionSearchModel(
      title: "Shop Game Nakata - Nakata Game Shop",
      detailAddress: "7/12 Nam Kỳ Khởi Nghĩa, P.Võ Thị Sáu, Q.3, Hồ Chí Minh, 700000, VietNam",
      type: SuggestionSearchLocationType.destination,
    ),
    SuggestionSearchModel(
      title: "Nakharat Thai Restaurant - Nakharat Thai Restaurant",
      detailAddress: "Đường N2, P.Thống Nhất, Tp.Biên Hòa, Đồng Nai, VietNam",
      type: SuggestionSearchLocationType.destination,
    ),
  ];
}
