import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/widgets/primary_button.dart';

class EmergencyAddContactPage extends StatefulWidget {
  const EmergencyAddContactPage({super.key});

  @override
  State<EmergencyAddContactPage> createState() =>
      _EmergencyAddContactPageState();
}

class _EmergencyAddContactPageState extends State<EmergencyAddContactPage> {
  Widget _buildBody(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAddContacts(),
                AppDimensions.mediumHeightSpace,
                
              ],
            ),
          ),
          _buildBottomButton(context),
        ],
      ),
    );
  }

  Widget _buildAddContacts() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.mediumSize,
      ),
      height: AppDimensions.customButtonHeight,
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Add from Contacts",
              style: AppTextStyles.bigBoldFont.copyWith(
                color: AppColors.lighterBlue,
              ),
            ),
          ),
          SizedBox.square(
            dimension: AppDimensions.imageMediumSize,
            child: Image.asset(AppIcons.rightArrow),
          ),
        ],
      ),
    );
  }

  Widget _buildInfo() {
    return 
  }

  Widget _buildBottomButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppDimensions.largestSize,
        ),
        child: PrimaryButtonWidget(
          title: "Save",
          width:
              MediaQuery.of(context).size.width - AppDimensions.mediumSize * 2,
          height: AppDimensions.customButtonHeight,
          borderRadius: AppDimensions.smallBorder,
          onTap: () => {},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          toolbarHeight: AppDimensions.navigationBarHeight,
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
          title: Text(
            'Add Emergency Contact',
            style: AppTextStyles.bigBoldFont,
          ),
        ),
        body: _buildBody(context),
      ),
    );
  }
}
