import 'package:flutter/material.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/extension/build_context_extension.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  Widget _test() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 50, top: 4),
              width: double.maxFinite,
              height: 200,
              child: CustomPaint(
                painter: MyPainter(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 50, left: 50),
              height: 240,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.greenAccent,
                    width: 3.0,
                  ),
                  bottom: BorderSide(
                    color: Colors.greenAccent,
                    width: 3.0,
                  ),
                ),
                // color: Colors.amberAccent,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 50, left: 50),
              height: 150,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.greenAccent,
                    width: 3.0,
                  ),
                  bottom: BorderSide(
                    color: Colors.greenAccent,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 50, left: 50),
              height: 250,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.greenAccent,
                    width: 3.0,
                  ),
                  bottom: BorderSide(
                    color: Colors.greenAccent,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 50, left: 50),
              height: 280,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.greenAccent,
                    width: 3.0,
                  ),
                  // ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 50),
              height: 0,
              width: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.greenAccent,
                    width: 3.0,
                  ),
                ),
              ),
            ),
          ],
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
            'Carbon Neutral Donation',
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

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double w = size.width;
    double h = size.height;
    double r = 35; //<-- corner radius

    Paint blackPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    Paint redPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    RRect fullRect = RRect.fromRectAndRadius(
      Rect.fromCenter(center: Offset(w / 2, h / 2), width: w, height: h),
      Radius.circular(r),
    );

    Path topRightArc = Path()
      ..moveTo(w - r, 0)
      ..arcToPoint(Offset(w, r), radius: Radius.circular(r));

    Path bottomLeftArc = Path()
      ..moveTo(r, h)
      ..arcToPoint(Offset(0, h - r), radius: Radius.circular(r));

    canvas.drawRRect(fullRect, blackPaint);
    canvas.drawPath(topRightArc, redPaint);
    canvas.drawPath(bottomLeftArc, redPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
