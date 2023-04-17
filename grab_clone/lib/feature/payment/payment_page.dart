import 'package:flutter/material.dart';
import 'package:grab_clone/feature/payment/payment_button_section.dart';
import 'package:grab_clone/feature/payment/payment_header_section.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PaymentHeaderSection(),
            PaymentButtonSection(),
          ],
        ),
      ),
    );
  }
}
