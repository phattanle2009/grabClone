import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      title: const Text(
        "Activity",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: Colors.black,
        ),
      ),
      centerTitle: false,
      actions: [
        Container(
          margin: const EdgeInsets.only(
            top: 10,
            right: 10,
          ),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: AppColors.lightBlue,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: GestureDetector(
            child: Row(
              children: [
                Image.asset(
                  AppIcons.history,
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 6),
                const Text(
                  "History",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _emptyContent(),
    );
  }
}
