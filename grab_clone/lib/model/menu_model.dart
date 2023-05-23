import 'package:flutter/material.dart';
import 'package:grab_clone/feature/account/account_page.dart';

class MenuModel {
  final String title;
  final bool isHeaderTitle;
  final MenuType menuType;
  final String? label;
  final String? leadingIconName;
  final Color? labelColor;
  final Color? backgroundColorForLabel;
  

  MenuModel({
    required this.title,
    required this.menuType,
    this.isHeaderTitle = false,
    this.label,
    this.labelColor,
    this.leadingIconName,
    this.backgroundColorForLabel,
  });
}
