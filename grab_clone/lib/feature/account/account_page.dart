import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/account/item/profile_item.dart';
import 'package:grab_clone/feature/account/item/profile_section_header.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
              isHeaderTitle: list[index - 1].isHeaderTitle,
              label: list[index - 1].label,
              labelColor: list[index - 1].labelColor,
              leadingIconName: list[index - 1].leadingIconName,
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
