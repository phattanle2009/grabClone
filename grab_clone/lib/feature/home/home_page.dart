import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/home/home_page_bloc.dart';
import 'package:grab_clone/feature/home/sections/text_field.dart';
import 'package:grab_clone/feature/home/sections/more_section.dart';
import 'package:grab_clone/feature/home/sections/order_now_section.dart';
import 'package:grab_clone/feature/home/sections/suggestion_section.dart';
import 'package:grab_clone/feature/home/sections/challenges_section.dart';
import 'package:grab_clone/feature/home/sections/collection_section.dart';
import 'package:grab_clone/feature/home/sections/discovering_section.dart';
import 'package:grab_clone/feature/home/sections/grab_unlimited_section.dart';
import 'package:grab_clone/feature/home/sections/card_collection_section.dart';
import 'package:grab_clone/feature/home/view/scan/scan_page.dart';
import 'package:grab_clone/feature/home/view/search/search_location_page.dart';
import 'package:grab_clone/feature/payment/payment_page.dart';
import 'package:grab_clone/tabbar/tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = HomePageBloc();

  void handleSearchWith(String text) {
    context.push(SearchLocationPage(
      searchText: text,
    ));
  }

  void tappedOnScan() {
    context.push(ScanPage());
  }

  void tappedOnPayment() {
    // context.push(ScanPage());
  }

  void tappedOnVerify() {
    // context.push(ScanPage());
  }

  void tappedOnPoint() {
    // context.push(ScanPage());
  }

  Widget _buildTextfieldHeader() {
    return StreamBuilder(
      stream: _bloc.result,
      builder: (context, snapshot) {
        final data = snapshot.data ?? SearchText(text: "", drawing: "");
        return HomeTextFieldHeader(
          onScan: () => tappedOnScan(),
          searchText: data.text,
          textDrawing: data.drawing,
          onSearch: (p0) => handleSearchWith(data.text),
        );
      },
    );
  }

  Widget _bottomLabel(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.mediumSize,
      ),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Text(
        "That's all for now!",
        style: AppTextStyles.smallerMediumFont.copyWith(
          color: AppColors.lightGray,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AppColors.green,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildTextfieldHeader(),
                  CollectionSection(),
                  CardCollectionSection(
                      onTapPoint: () => tappedOnPoint(),
                      onTapVerify: () => tappedOnVerify(),
                      onTapPayment: () => tappedOnPayment()),
                  OrderNowSection(),
                  SuggestionSection(
                    sectionHeader: "Restaurants you may like",
                    list: Mock.restaurants,
                  ),
                  SuggestionSection(
                    sectionHeader: "Food for you",
                    list: Mock.foods,
                  ),
                  ChallengesSection(),
                  GrabUnlimitedSection(),
                  HomeMoreSection(),
                  DiscoveringSection(),
                  _bottomLabel(context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
