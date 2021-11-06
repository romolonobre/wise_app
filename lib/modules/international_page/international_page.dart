import 'package:flutter/material.dart';
import 'package:wise/application/widgets/custom_buttom.dart';
import 'package:wise/application/widgets/input_currency_value.dart';
import 'package:wise/application/widgets/custom_text.dart';
import 'package:wise/application/widgets/fee_details.dart';

class InternationalPage extends StatelessWidget {
  const InternationalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 15),
            const InputCurrencyValue(),
            const FeeDetails(),
            const InputCurrencyValue(),
            const SizedBox(height: 10),
            const CustomText(text: 'Bu continuing, i accept the terms of use'),
            const SizedBox(height: 20),
            CustomButtom(
              label: 'Price comparasion',
              onPressed: () {},
              width: double.infinity,
              color: Colors.white,
              labelColor: Colors.blue,
            ),
            const SizedBox(height: 250),
            const Divider(thickness: 1),
            CustomButtom(
              label: 'Continue',
              onPressed: () {},
              width: double.infinity,
              color: Colors.green,
              labelColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
