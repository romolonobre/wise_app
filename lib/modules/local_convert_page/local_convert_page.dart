import 'package:flutter/material.dart';
import 'package:wise/application/widgets/custom_buttom.dart';
import 'package:wise/application/widgets/custom_text.dart';
import 'package:wise/application/widgets/fee_details.dart';
import 'package:wise/application/widgets/input_currency_value.dart';

class LocalConvertPage extends StatelessWidget {
  const LocalConvertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          InputCurrencyValue(),
          FeeDetails(),
          CustomText(text: 'should arrive by November 9th'),
          Expanded(child: SizedBox()),
          CustomButtom(
            label: 'Continue',
            onPressed: () {},
            width: double.infinity,
            color: Colors.green,
            labelColor: Colors.white,
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }
}
