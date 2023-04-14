import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/feature/message/notification_item.dart';
import 'package:grab_clone/feature/payment/payment_header_section.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  Widget _renderList() {
    var list = Mock().notifications;
    return ListView.builder(
      padding: EdgeInsets.zero,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innderIsScolled) => [
          SliverAppBar(
            toolbarHeight: 200,
            leadingWidth: MediaQuery.of(context).size.width,
            elevation: 0,
            leading: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Payment',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Image.asset(
                        AppIcons.trash,
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                  AppDimensions.largeHeightSpace,
                  AppDimensions.largeHeightSpace,
                  Text(
                    "The simplest and most rewarding way to pay",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.sky),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
        body: Container(
          child: _renderList(),
        ),
      ),
    );
  }
}
