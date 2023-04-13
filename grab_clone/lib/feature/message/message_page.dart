import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  var isNotiSelected = true;

  Widget _renderList() {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return ListView.builder(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          tileColor: index.isOdd ? oddItemColor : evenItemColor,
          title: Text("${isNotiSelected ? "Notifications" : "Chats"} $index"),
        );
      },
    );
  }

  Widget _emptyContent() {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Image.asset(
            AppImages.activityEmpty,
            width: 180,
            height: 180,
          ),
          const Text(
            "Nothing's happening now",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const Text(
            "When you use our services, you'll see them here",
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
            fontWeight: FontWeight.w600,
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
              'Message',
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
              padding: EdgeInsets.only(bottom: 30),
              tabs: <Widget>[
                _renderButton("Chats", !isNotiSelected),
                _renderButton("Notifications", isNotiSelected),
              ],
            ),
          ),
          body: Container(
            child: isNotiSelected ? _renderList() : _emptyContent(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAppBar(context);
  }
}
