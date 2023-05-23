import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  final TextStyle style;
  final String sectionHeader;

  HeaderTitle({
    required this.style,
    required this.sectionHeader,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      sectionHeader,
      style: style,
    );
  }
}
