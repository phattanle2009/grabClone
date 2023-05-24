import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/feature/account/account_page.dart';
import 'package:grab_clone/feature/home/view/search/item/search_location_item.dart';
import 'package:grab_clone/model/garb_unlimitted_model.dart';
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

  static List<SuggestionModel> searchRestaurants = [
    SuggestionModel(
      merchantName: "Highlands Coffee - Hàn Hải Nguyên - Sài Gòn",
      distance: 2.0,
      rating: 4.4,
      hotLabel: "Giảm giá",
      imageName: AppImages.chicken1,
      desc: "Coffee - Tea - Juice",
      routeTime: "20 min",
      moreInfos: "2 or more related results",
      isPromo: true,
    ),
    SuggestionModel(
      merchantName: "Say Coffee - Sư Vạn Hạnh",
      distance: 2.3,
      rating: 4.5,
      hotLabel: "Giảm giá",
      imageName: AppImages.chicken1,
      desc: "Coffee - Tea - Juice, Tạp Dề Bạc",
      routeTime: "25 min",
      moreInfos: "3 or more related results",
    ),
    SuggestionModel(
      merchantName: "Sushi Viên Ông Chủ Nhỏ 2 - Hậu Giang",
      distance: 2.7,
      rating: 4.3,
      hotLabel: "Giảm giá",
      imageName: AppImages.chicken1,
      desc: "International Food",
      routeTime: "30 min",
      moreInfos: "2 or more related results",
      isPromo: true,
    ),
    SuggestionModel(
      merchantName: "AQ Food - Gà Ủ Muối Hoa Tiêu",
      distance: 3.4,
      rating: 4.7,
      hotLabel: "Giảm giá",
      imageName: AppImages.chicken1,
      desc: "Coffee - Tea - Juice, Tạp Dề Vàng, Chicken",
      routeTime: "20 min",
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
      menuType: MenuType.none,
    ),
    MenuModel(
      title: "Rewards",
      menuType: MenuType.reward,
    ),
    MenuModel(
      title: "Subscriptions",
      label: "New",
      backgroundColorForLabel: AppColors.red,
      menuType: MenuType.subcription,
    ),
    MenuModel(
      title: "Challenges",
      menuType: MenuType.challenge,
    ),
    MenuModel(
      title: "Referrals",
      label: "New",
      backgroundColorForLabel: AppColors.red,
      menuType: MenuType.referral,
    ),
    MenuModel(
      title: "My account",
      isHeaderTitle: true,
      menuType: MenuType.none,
    ),
    MenuModel(
      title: "Rewards Member",
      leadingIconName: AppIcons.queen,
      label: "0 Points",
      labelColor: AppColors.lightGray,
      menuType: MenuType.rewardMember,
    ),
    MenuModel(
      title: "Favourites",
      label: "New",
      backgroundColorForLabel: AppColors.red,
      menuType: MenuType.favourite,
    ),
    MenuModel(
      title: "Payment Methods",
      menuType: MenuType.paymentMethod,
    ),
    MenuModel(
      title: "Scheduled",
      menuType: MenuType.schedule,
    ),
    MenuModel(
      title: "Saved Places",
      menuType: MenuType.savePlace,
    ),
    MenuModel(
      title: "Emergency Contacts",
      menuType: MenuType.emergencyContact,
    ),
    MenuModel(
      title: "Business Account",
      menuType: MenuType.businessAccount,
    ),
    MenuModel(
      title: "General",
      isHeaderTitle: true,
      menuType: MenuType.none,
    ),
    MenuModel(
      title: "Help Centre",
      menuType: MenuType.helpCentre,
    ),
    MenuModel(
      title: "Settings",
      menuType: MenuType.setting,
    ),
    MenuModel(
      title: "Share Feedback",
      menuType: MenuType.shareFeedback,
    ),
    MenuModel(
      title: "Opportunities",
      isHeaderTitle: true,
      menuType: MenuType.none,
    ),
    MenuModel(
      title: "Support the Environment",
      label: "New",
      backgroundColorForLabel: AppColors.red,
      menuType: MenuType.supportEnv,
    ),
    MenuModel(
      title: "Drive With Grab",
      menuType: MenuType.drive,
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
      detailAddress:
          "781 Âu Cơ, P.Tân Thành, Q.Tân Phú, Hồ Chí Minh, 700000, Việt Nam",
      type: SuggestionSearchLocationType.recently,
    ),
    SuggestionSearchModel(
      title: "65/7 Street No.14",
      detailAddress:
          "65/7 Đường số 14, P.11, Q.Gò Vấp, Hồ Chí Minh, 700000, VietNam",
      type: SuggestionSearchLocationType.recently,
    ),
    SuggestionSearchModel(
      title: "West Coach Station",
      detailAddress:
          "295 Kinh Dương Vương, P.An Lạc, Q.Bình Tân, Hồ Chí Minh, 700000, VietNam",
      type: SuggestionSearchLocationType.recently,
    ),
  ];

  static List<SuggestionSearchModel> destinationItems = [
    SuggestionSearchModel(
      title: "Công ty TNHH Nakano Precision - Nakano Precision Co.,LTD",
      detailAddress:
          "Lô III-3B Đường 12, Nhóm Công nghiệp III, KCN Linh Xuân, Thành Phố Thủ Đức",
      type: SuggestionSearchLocationType.destination,
    ),
    SuggestionSearchModel(
      title: "Naked sushi",
      detailAddress: "193A/6 Trần Quang Diệu, P.14, Q.3, Hồ Chí Minh",
      type: SuggestionSearchLocationType.destination,
    ),
    SuggestionSearchModel(
      title: "Shop Game Nakata - Nakata Game Shop",
      detailAddress:
          "7/12 Nam Kỳ Khởi Nghĩa, P.Võ Thị Sáu, Q.3, Hồ Chí Minh, 700000, VietNam",
      type: SuggestionSearchLocationType.destination,
    ),
    SuggestionSearchModel(
      title: "Nakharat Thai Restaurant - Nakharat Thai Restaurant",
      detailAddress: "Đường N2, P.Thống Nhất, Tp.Biên Hòa, Đồng Nai, VietNam",
      type: SuggestionSearchLocationType.destination,
    ),
  ];

  static List<String> tagItems = [
    "All",
    "Destinations",
    "Restaurant",
    "Groceries and supplies"
  ];

  static List<GrabUnlimitedModel> grabUnlimitedItems = [
    GrabUnlimitedModel(
      title: "Freeship 15.000đ mỗi đơn GrabFood",
      subtitle: "Tìm hiểu thêm",
      imageNamed: AppImages.grabUnlimited1,
      discountLabel: "From 1.000d / month ",
      discountPrice: "49.000đ",
    ),
    GrabUnlimitedModel(
      title: "Đăng ký ngay chỉ 1.000đ",
      subtitle: "Giá gốc 49.000đ",
      imageNamed: AppImages.grabUnlimited2,
      discountLabel: "From 10.000d / month ",
      discountPrice: "99.000đ",
    ),
    GrabUnlimitedModel(
      title: "Đăng ký ngay với Grab",
      subtitle: "Giá 99.000đ",
      imageNamed: AppImages.discover12,
      discountLabel: "From 50.000d / month ",
      discountPrice: "199.000đ",
    ),
    GrabUnlimitedModel(
      title: "GrabUnlimited",
      subtitle: "Super savings more than 1.700.000d/month",
      imageNamed: AppImages.discover2,
      discountLabel: "From 1.000d / month ",
      discountPrice: "99.000đ",
    ),
    GrabUnlimitedModel(
      title: "Gói Hội Viên",
      subtitle: "Saving 1.000.000đ",
      imageNamed: AppImages.discover10,
      discountLabel: "From 1.000d / month ",
      discountPrice: "99.000đ",
    ),
    GrabUnlimitedModel(
      title: "Triệt tiêu nắng nóng",
      subtitle: "Nhiệt độ bao nhiêu giảm bấy nhiêu",
      imageNamed: AppImages.discover7,
      discountLabel: "Giảm giá tối đa ",
      discountPrice: "49.000đ",
    ),
    GrabUnlimitedModel(
      title: "Ngồi mát Grab giao",
      subtitle: "Giải khát cùng MayCha",
      imageNamed: AppImages.discover8,
      discountLabel: "Ưu đãi ",
      discountPrice: "29.000đ",
    ),
    GrabUnlimitedModel(
      title: "Gói ưu đãi Moca",
      subtitle: "Hoàn tiền 100.000đ",
      imageNamed: AppImages.discover11,
      discountLabel: "Giảm giá các món khác ",
      discountPrice: "99.000đ",
    ),
  ];
}
