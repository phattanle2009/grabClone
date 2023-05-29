import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/account/emergency_contact_page.dart';
import 'package:grab_clone/feature/account/item/profile_item.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/account/reward_member_page.dart';
import 'package:grab_clone/feature/account/account_setting_page.dart';
import 'package:grab_clone/feature/account/item/profile_section_header.dart';
import 'package:grab_clone/feature/account/schedule_bottom_modal.dart';
import 'package:grab_clone/feature/account/subscription_page.dart';
import 'package:grab_clone/feature/home/view/favourite/favourite_page.dart';

enum MenuType {
  none,
  drive,
  reward,
  setting,
  schedule,
  referral,
  challenge,
  savePlace,
  favourite,
  supportEnv,
  helpCentre,
  subcription,
  rewardMember,
  shareFeedback,
  paymentMethod,
  businessAccount,
  emergencyContact,
}

class AccountPage extends StatefulWidget {
  final MenuType openMenuType;
  final Function openActivity;

  const AccountPage({
    super.key,
    required this.openMenuType,
    required this.openActivity,
  });

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    _viewDidLoad();
    super.initState();
  }

  void _viewDidLoad() {
    Future.delayed(Duration(milliseconds: 500), () {
      switch (widget.openMenuType) {
        case MenuType.rewardMember:
          context.push(RewardMemberPage());
          break;
        case MenuType.setting:
          context.push(AccountSettingPage());
          break;
        default:
          return;
      }
    });
  }

  void _openDetail(MenuType type) {
    switch (type) {
      case MenuType.subcription:
        context.push(SubscriptionPage());
        break;
      case MenuType.rewardMember:
        context.push(RewardMemberPage());
        break;
      case MenuType.favourite:
        context.push(FavouritePage());
        break;
      case MenuType.schedule:
        ScheduleBottomModal.showBottomModal(
          context,
          () => {widget.openActivity()},
        );
        break;
      case MenuType.emergencyContact:
        context.push(EmergencyContactPage());
        break;
      case MenuType.setting:
        context.push(AccountSettingPage());
        break;
      default:
        print(type);
        return;
    }
  }

  Widget _config() {
    var list = Mock.menuItems;
    return ListView.builder(
      itemCount: list.length + 1,
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.mediumSize),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return ProfileSectionHeader();
          default:
            return ProfileItem(
              title: list[index - 1].title,
              label: list[index - 1].label,
              labelColor: list[index - 1].labelColor,
              isHeaderTitle: list[index - 1].isHeaderTitle,
              leadingIconName: list[index - 1].leadingIconName,
              onTap: () => _openDetail(list[index - 1].menuType),
              backgroundColorForLabel: list[index - 1].backgroundColorForLabel,
            );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _config(),
      ),
    );
  }
}
