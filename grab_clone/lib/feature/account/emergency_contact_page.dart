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
  void didChangeDependencies() {
    _bloc.fetchContactData();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder(
      stream: _bloc.result,
      builder: (context, snapshot) {
        final list = snapshot.data ?? [];
        if (list.isEmpty) {
          return _buildEmptyBody(context);
        } else {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: list.length + 1,
                  padding: const EdgeInsets.only(top: AppDimensions.largeSize),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    if (index < list.length) {
                      return Container(
                        height: AppDimensions.toolBarHeight,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: ListTile(
                          title: Text(list[index].fullName),
                          subtitle: Text(list[index].phoneNumber),
                          trailing: Image.asset(
                            AppIcons.rightArrow,
                            width: AppDimensions.imageSmallSize,
                          ),
                          onTap: () {
                            context
                                .push(
                                  EmergencyAddContactPage(
                                    updateContact: list[index],
                                  ),
                                )
                                .then(
                                  (value) => {
                                    if (value) didChangeDependencies(),
                                  },
                                );
                          },
                        ),
                      );
                    } else {
                      return _buildBottomList();
                    }
                  },
                ),
              ),
              _buildBottomButton(context),
            ],
          );
        }
      },
    );
  }

  Widget _buildBottomList() {
    return Container(
      padding: EdgeInsets.all(AppDimensions.mediumSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Grab will send an alert containing your contact details and live location in the event of an emergency.",
          ),
          AppDimensions.mediumHeightSpace,
          InkWell(
            child: Text(
              "Learn more about Emergency Contacts",
              style: AppTextStyles.bigBoldFont.copyWith(
                color: AppColors.lighterBlue,
              ),
            ),
          ),
        ],
      ),
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
          onTap: () => {
            context.push(
              EmergencyAddContactPage(),
            ),
          },
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
