import 'package:flutter/material.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/account/emergency_add_contact_page.dart';
import 'package:grab_clone/feature/account/emergency_contact_bloc.dart';
import 'package:grab_clone/feature/widgets/primary_button.dart';

class EmergencyContactPage extends StatefulWidget {
  const EmergencyContactPage({super.key});

  @override
  State<EmergencyContactPage> createState() => _EmergencyContactPageState();
}

class _EmergencyContactPageState extends State<EmergencyContactPage> {
  final _bloc = EmergencyContactBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder(
      stream: _bloc.result,
      builder: (context, snapshot) {
        final data = snapshot.data ?? [];
        if (data.isEmpty) {
          return _buildEmptyBody(context);
        } else {
          /*
          ListView.builder(
      itemCount: _bloc.result.length,
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.mediumSize),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return ProfileSectionHeader();
          default:
            return ProfileItem(
              title: list[index - 1].title,
              label: list[index - 1].label,
              labelColor: list[index - 1].labelColor,
              isHeaderTitle: list[index - 1].isHeaderTitle,
              leadingIconName: list[index - 1].leadingIconName,
              onTap: () => _openDetail(list[index - 1].menuType),
              backgroundColorForLabel: list[index - 1].backgroundColorForLabel,
            );
        }
      },
    );
          */
          return Container(
            color: Colors.red,
          );
        }
      },
    );
  }

  Widget _buildEmptyBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.largerSize,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.emergencyEmpty,
                  width: AppDimensions.bannerSize,
                ),
                AppDimensions.mediumHeightSpace,
                Text(
                  "Add up to 3 Emergency Contacts who will be notified via SMS anytime you require an emergency assistance during a ride.",
                  style: AppTextStyles.smallMediumFont,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          _buildBottomButton(context),
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
          title: "ADD",
          width:
              MediaQuery.of(context).size.width - AppDimensions.mediumSize * 2,
          height: AppDimensions.customButtonHeight,
          borderRadius: AppDimensions.smallBorder,
          onTap: () => {context.push(EmergencyAddContactPage())},
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
            'Emergency Contacts',
            style: AppTextStyles.bigBoldFont,
          ),
        ),
        body: _buildBody(context),
      ),
    );
  }
}
