import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/payment/item/payment_setting_item.dart';

class AccountSettingPage extends StatefulWidget {
  const AccountSettingPage({super.key});

  @override
  State<AccountSettingPage> createState() => _AccountSettingPageState();
}

class _AccountSettingPageState extends State<AccountSettingPage> {
  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(AppDimensions.mediumSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PaymentSettingItem(
            onTap: () => {print("")},
            sectionTitle: "Payments",
            title: "All payment methods",
            subtitle: "Manage your payment methods and top ups",
          ),
          AppDimensions.largestHeightSpace,
          PaymentSettingItem(
            onTap: () => {print("")},
            sectionTitle: "Security",
            title: "GrabPiN",
            subtitle: "Create or reset your PIN",
          ),
          Expanded(child: Container()),
          _buildBottomButton(),
        ],
      ),
    );
  }

  Widget _buildBottomButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppDimensions.largestSize,
        ),
        child: GestureDetector(
          onTap: () => {print("tapped on Get Help")},
          child: Text(
            "Get Help",
            style: AppTextStyles.smallBoldFont
                .copyWith(color: AppColors.lighterBlue),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leadingWidth: AppDimensions.customButtonHeight,
          leading: Padding(
            padding: EdgeInsets.all(AppDimensions.smallSize),
            child: InkWell(
              onTap: () {
                context.pop();
              },
              child: Image.asset(AppIcons.leftArrow),
            ),
          ),
          title: const Text(
            'Finance Settings',
            style: AppTextStyles.biggerBoldFont,
          ),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
        ),
        body: _buildBody(),
      ),
    );
  }
}
