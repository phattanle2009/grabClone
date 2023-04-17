import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/feature/message/notification_item.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  var isNotiSelected = true;

  Widget _renderList() {
    var list = Mock().notifications;
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
            height: 120,
          ),
          Image.asset(
            AppImages.helpCentre,
            width: 220,
            height: 220,
          ),
          const Text(
            "Find your chats with our support specialists here!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          AppDimensions.mediumHeightSpace,
          const Text(
            "You can also get help from them via our Help Center.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
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
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
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
            toolbarHeight: 80,
            elevation: 0,
            centerTitle: false,
            title: const Text(
              'Messages',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            notificationPredicate: (ScrollNotification notification) {
              return notification.depth == 1;
            },
            actions: [
              Container(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  child: Image.asset(
                    AppIcons.trash,
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              isScrollable: false,
              padding: EdgeInsets.only(bottom: 34),
              tabs: <Widget>[
                _renderButton("Chats", !isNotiSelected),
                _renderButton("Notifications", isNotiSelected),
              ],
            ),
          ),
          body: Container(
            color: Colors.white,
            child: isNotiSelected ? _renderList() : _emptyContent(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAppBar(context);
  }
}
