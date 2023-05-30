import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/database/database.dart';
import 'package:grab_clone/model/contact_model.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:grab_clone/feature/widgets/primary_button.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
// import 'package:grab_clone/feature/account/emergency_add_contact_bloc.dart';

class EmergencyAddContactPage extends StatefulWidget {
  final ContactModel? updateContact;

  const EmergencyAddContactPage({
    super.key,
    this.updateContact,
  });

  @override
  State<EmergencyAddContactPage> createState() =>
      _EmergencyAddContactPageState();
}

class _EmergencyAddContactPageState extends State<EmergencyAddContactPage> {
  // final _bloc = EmergencyAddContactBloc();
  final _nameTFController = TextEditingController();
  final _phoneNumberTFController = TextEditingController();
  var _countryCode = CountryCode(dialCode: '+84');

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
    if (widget.updateContact != null) {
      _nameTFController.text = widget.updateContact!.fullName;
      _phoneNumberTFController.text = widget.updateContact!.phoneNumber;
    }
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(AppDimensions.mediumSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _nameTFController,
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
                        _countryCode = value;
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
                  controller: _phoneNumberTFController,
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

  void _addNewContact(ContactModel newContact) {
    if (widget.updateContact == null) {
      DBProvider.db.newContact(newContact);
    } else {
      DBProvider.db.updateContact(newContact);
    }
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
          onTap: () {
            var contact = ContactModel(
              id: 0,
              fullName: _nameTFController.text,
              phoneNumber:
                  '${_countryCode.dialCode} ${_phoneNumberTFController.text}',
            );
            _addNewContact(contact);
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
            'Add Emergency Contact',
            style: AppTextStyles.bigBoldFont,
          ),
        ),
        body: _buildBody(context),
      ),
    );
  }
}
