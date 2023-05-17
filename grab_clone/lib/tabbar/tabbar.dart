import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';
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
  int _pageIndex = 0;

  static final List<Widget> _page = <Widget>[
    const HomePage(),
    const ActivityPage(),
    const PaymentPage(),
    const MessagePage(),
    const AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() => _pageIndex = index);
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

  Widget _buildBottomNavigator() {
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
        currentIndex: _pageIndex,
        unselectedItemColor: AppColors.lightGray,
        selectedItemColor: Colors.green,
        selectedLabelStyle: AppTextStyles.smallestBoldFont.copyWith(
          color: AppColors.lightGreen,
        ),
        unselectedLabelStyle: AppTextStyles.smallestMediumFont.copyWith(
          color: AppColors.lightGray,
        ),
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_pageIndex],
      bottomNavigationBar: _buildBottomNavigator(),
    );
  }
}
