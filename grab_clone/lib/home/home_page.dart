import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/home/sections/collection_section.dart';
import 'package:grab_clone/home/sections/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeTextFieldHeader(),
              CollectionSection(),
            ],
          ),
        ),
      ),
    );
  }
}
