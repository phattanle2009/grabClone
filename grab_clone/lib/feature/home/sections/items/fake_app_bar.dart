import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/image.dart';

class FakeAppBar extends StatelessWidget {
  String? banner;

  FakeAppBar({
    this.banner = null,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.green,
          image: banner == null
              ? null
              : DecorationImage(
                  image: AssetImage(banner!),
                ),
        ),
      ),
    );
  }
}
