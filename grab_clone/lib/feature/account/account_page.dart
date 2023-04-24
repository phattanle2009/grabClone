import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/account/item/profile_item.dart';
import 'package:grab_clone/feature/account/item/profile_section_label.dart';
import 'package:grab_clone/feature/account/item/profile_section_header.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  Widget _config() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.mediumSize),
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileSectionHeader(),
          ProfileSectionLabel(title: "For more value"),
          ProfileItem(
            title: "Rewards",
          ),
          ProfileItem(
            title: "Subscriptions",
            label: "New",
            backgroundColorForLabel: AppColors.red,
          ),
          ProfileItem(
            title: "Challenges",
          ),
          ProfileItem(
            title: "Referrals",
            label: "New",
            backgroundColorForLabel: AppColors.red,
          ),
          ProfileSectionLabel(title: "My account"),
          ProfileItem(
            title: "Rewards Member",
            leadingIconName: AppIcons.queen,
            label: "0 Points",
            labelColor: AppColors.lightGray,
          ),
          ProfileItem(
            title: "Favourites",
            label: "New",
            backgroundColorForLabel: AppColors.red,
          ),
          ProfileItem(
            title: "Payment Methods",
          ),
          ProfileItem(
            title: "Scheduled",
          ),
          ProfileItem(
            title: "Saved Places",
          ),
          ProfileItem(
            title: "Emergency Contacts",
          ),
          ProfileItem(
            title: "Business Account",
          ),
          ProfileSectionLabel(title: "General"),
          ProfileItem(
            title: "Help Centre",
          ),
          ProfileItem(
            title: "Settings",
          ),
          ProfileItem(
            title: "Share Feedback",
          ),
          ProfileSectionLabel(title: "Opportunities"),
          ProfileItem(
            title: "Support the Environment",
            label: "New",
            backgroundColorForLabel: AppColors.red,
          ),
          ProfileItem(
            title: "Drive With Grab",
          ),
        ],
      ),
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
