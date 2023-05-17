import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/feature/message/notification_item.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  var isNotiSelected = true;

  Widget _renderList() {
    var list = Mock.notifications;
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return NotificationItems(
          title: list[index].title,
          subtitle: list[index].subtitle,
          datetime: list[index].datetime,
          asRead: list[index].asRead,
        );
      },
    );
  }

  Widget _emptyContent() {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: AppDimensions.bigerSize,
          ),
          Image.asset(
            AppImages.helpCentre,
            width: AppDimensions.bigestSize,
            height: AppDimensions.bigestSize,
          ),
          const Text(
            "Find your chats with our support specialists here!",
            textAlign: TextAlign.center,
            style: AppTextStyles.biggerBoldFont,
          ),
          AppDimensions.mediumHeightSpace,
          const Text(
            "You can also get help from them via our Help Center.",
            textAlign: TextAlign.center,
            style: AppTextStyles.smallMediumFont,
          ),
        ],
      ),
    );
  }

  Widget _renderButton(String title, bool isSelected) {
    return GestureDetector(
      onLongPress: null,
      onTap: () {
        setState(() {
          isNotiSelected = !isNotiSelected;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.darkGeen : AppColors.lightBlue,
          borderRadius: BorderRadius.all(
            Radius.circular(AppDimensions.mediumBorder),
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: AppDimensions.smallerPadding,
          horizontal: AppDimensions.largePadding,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyles.smallBoldFont.copyWith(
            color: isSelected ? Colors.white : AppColors.darkGeen,
          ),
        ),
      ),
    );
  }

  DefaultTabController _buildAppBar(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: AppDimensions.toolBarHeight,
          elevation: 0,
          centerTitle: false,
          title: const Text(
            'Messages',
            style: AppTextStyles.biggestBoldFont,
          ),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          actions: [
            Container(
              padding: const EdgeInsets.all(
                AppDimensions.smallerPadding,
              ),
              child: GestureDetector(
                child: Image.asset(
                  AppIcons.trash,
                  width: AppDimensions.imageMediumSize,
                  height: AppDimensions.imageMediumSize,
                ),
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            isScrollable: false,
            padding: EdgeInsets.only(bottom: AppDimensions.largerPadding),
            tabs: <Widget>[
              _renderButton("Chats", !isNotiSelected),
              _renderButton("Notifications", isNotiSelected),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: isNotiSelected ? _renderList() : _emptyContent(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAppBar(context);
  }
}
