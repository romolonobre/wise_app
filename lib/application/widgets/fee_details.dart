import 'package:flutter/material.dart';

import 'custom_text.dart';

class FeeDetails extends StatelessWidget {
  const FeeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CustomText(text: '3.99 AUD'),
            TextButton(
              onPressed: () {},
              child: const Text(
                ' Debit card',
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.blue,
            ),
            const CustomText(text: 'fee'),
          ],
        ),
        const CustomText(text: ' 5.12 AUD  Our fee'),
        const SizedBox(height: 10),
        const CustomText(text: ' 7,48 Total fees'),
        const Divider(
          height: 40,
          thickness: 1,
        )
      ],
    );
  }
}
