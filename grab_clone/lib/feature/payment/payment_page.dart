import 'package:flutter/material.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/payment/payment_button_section.dart';
import 'package:grab_clone/feature/payment/payment_header_section.dart';
import 'package:grab_clone/feature/payment/payment_setting_page.dart';
import 'package:grab_clone/feature/payment/recent_transaction_section.dart';
import 'package:grab_clone/feature/payment/payment_recommended_section.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  void _tappedOnSettingButton() {
    context.push(PagementSettingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PaymentHeaderSection(
              onTapSetting: () => _tappedOnSettingButton(),
            ),
            PaymentButtonSection(),
            PaymentRecommendedSection(),
            RecentTransactionSection(),
          ],
        ),
      ),
    );
  }
}
