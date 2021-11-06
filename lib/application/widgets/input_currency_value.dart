import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:wise/application/constants/contants.dart';

class InputCurrencyValue extends StatelessWidget {
  const InputCurrencyValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          height: Get.height * 0.09,
          width: Get.width * 0.62,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey.withOpacity(0.3),
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
          child: const TextField(
            mouseCursor: MouseCursor.defer,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              labelText: 'You send exactly',
              labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          height: Get.height * 0.09,
          width: Get.width * 0.30,
          decoration: const BoxDecoration(
            color: blueMainColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/australia.png',
                height: 14,
                width: 14,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 6),
              const Text(
                'AUD',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.blue,
              )
            ],
          ),
        )
      ],
    );
  }
}
