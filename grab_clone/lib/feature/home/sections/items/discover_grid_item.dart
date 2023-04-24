import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DiscoverGridItem extends StatelessWidget {
  String title;
  String subtitle;
  String iconName;

  DiscoverGridItem({
    required this.title,
    required this.subtitle,
    required this.iconName,
  });

  Widget _config() {
    return Container(
      child: Column(
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
