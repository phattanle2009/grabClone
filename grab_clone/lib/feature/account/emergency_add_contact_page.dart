import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/widgets/primary_button.dart';
import 'dart:math' as math;

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
      padding: EdgeInsets.only(top: AppDimensions.largeSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                _buildAddContacts(),
                AppDimensions.mediumHeightSpace,
                _buildInfo(),
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
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(AppDimensions.mediumSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name of contact person',
            ),
          ),
          AppDimensions.mediumHeightSpace,
          Row(
            children: [
              Container(
                height: AppDimensions.customButtonHeight + 9,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.lightGray),
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppDimensions.smallerBorder),
                  ),
                ),
                child: Row(
                  children: [
                    CountryCodePicker(
                      initialSelection: 'Việt Nam',
                      favorite: ['Việt Nam'],
                      onChanged: (value) {
                        print(value.dialCode);
                        print(value.name);
                      },
                    ),
                    Transform.rotate(
                      angle: math.pi / 2,
                      child: Image.asset(
                        AppIcons.rightArrow,
                        width: AppDimensions.imageSmallSize,
                      ),
                    ),
                    AppDimensions.smallWidthSpace,
                  ],
                ),
              ),
              AppDimensions.mediumWidthSpace,
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Mobile number',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
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
