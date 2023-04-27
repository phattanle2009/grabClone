import 'package:flutter/material.dart';

class MenuModel {
  final String title;
  final bool isHeaderTitle;
  final String? label;
  final String? leadingIconName;
  final Color? labelColor;
  final Color? backgroundColorForLabel;

  MenuModel({
    required this.title,
    this.isHeaderTitle = false,
    this.label,
    this.leadingIconName,
    this.labelColor,
    this.backgroundColorForLabel,
  });
}
