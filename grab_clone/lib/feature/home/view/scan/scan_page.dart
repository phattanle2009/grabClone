import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/home/view/scan/scan_page_body.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  Widget _buildRightNavigationBarButton() {
    return Container(
      padding: EdgeInsets.only(
        right: AppDimensions.mediumSize,
      ),
      child: InkWell(
        onTap: () {
          context.pop();
        },
        child: Image.asset(
          AppIcons.paper,
          width: AppDimensions.imageLargeSize,
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
          actions: [
            _buildRightNavigationBarButton(),
          ],
          title: const Text(
            'Moca',
            style: AppTextStyles.biggerBoldFont,
          ),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
        ),
        body: ScanPageBody(name: "Lê Tấn Phát"),
      ),
    );
  }
}
