import 'package:flutter/material.dart';

class ProfileSectionLabel extends StatelessWidget {
  String title;

  ProfileSectionLabel({
    required this.title,
  });

  Widget _config() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config();
  }
}
