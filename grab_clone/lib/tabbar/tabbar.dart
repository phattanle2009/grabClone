import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/tabbar/tabbar_bloc.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/home/home_page.dart';
import 'package:grab_clone/feature/payment/payment_page.dart';
import 'package:grab_clone/feature/message/message_page.dart';
import 'package:grab_clone/feature/account/account_page.dart';
import 'package:grab_clone/feature/activity/activity_page.dart';

class DashboardNavigator extends StatefulWidget {
  const DashboardNavigator({super.key});

  @override
  State<StatefulWidget> createState() => _DashboardNavigatorState();
}

class _DashboardNavigatorState extends State<DashboardNavigator> {
  final _bloc = TabbarBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  BottomNavigationBarItem _buildItemNavigator(
      String name, String iconSelect, String iconUnselect) {
    return BottomNavigationBarItem(
      label: name,
      icon: SizedBox(
        width: AppDimensions.imageMediumSize,
        height: AppDimensions.imageMediumSize,
        child: Image.asset(
          iconUnselect,
          color: AppColors.lightGray,
        ),
      ),
      activeIcon: SizedBox(
        width: AppDimensions.imageMediumSize,
        height: AppDimensions.imageMediumSize,
        child: Image.asset(
          iconSelect,
          color: AppColors.mediumGreen,
        ),
      ),
    );
  }

  Widget _buildBottomNavigator(int index) {
    return ClipRRect(
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          _buildItemNavigator(
            "Home",
            AppIcons.homeFilled,
            AppIcons.home,
          ),
          _buildItemNavigator(
            "Activity",
            AppIcons.activityFilled,
            AppIcons.activity,
          ),
          _buildItemNavigator(
            "Payment",
            AppIcons.walletFilled,
            AppIcons.wallet,
          ),
          _buildItemNavigator(
            "Messages",
            AppIcons.messageFilled,
            AppIcons.message,
          ),
          _buildItemNavigator(
            "Account",
            AppIcons.userFilled,
            AppIcons.user,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: index,
        unselectedItemColor: AppColors.lightGray,
        selectedItemColor: Colors.green,
        selectedLabelStyle: AppTextStyles.smallestBoldFont.copyWith(
          color: AppColors.lightGreen,
        ),
        unselectedLabelStyle: AppTextStyles.smallestMediumFont.copyWith(
          color: AppColors.lightGray,
        ),
        onTap: (index) => _bloc.changeTabbar(index: index),
        backgroundColor: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _bloc.aResult,
      builder: (context, snapshot) {
        final data = snapshot.data ?? 0;
        return Scaffold(
          body: <Widget>[
            HomePage(
              onPressedPoint: () =>
                  _bloc.changeTabbar(index: 4, argument: MenuType.rewardMember),
              onPressedPayment: () => _bloc.changeTabbar(index: 2),
              onPressedVerifyMail: () =>
                  _bloc.changeTabbar(index: 4, argument: MenuType.setting),
            ),
            const ActivityPage(),
            const PaymentPage(),
            const MessagePage(),
            AccountPage(openMenuType: _bloc.arg),
          ][data],
          bottomNavigationBar: _buildBottomNavigator(data),
        );
      },
    );
  }
}
