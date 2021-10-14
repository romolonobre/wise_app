import 'package:flutter/material.dart';
import 'package:wise/application/constants/contants.dart';

class NewTransactionDisplay extends StatelessWidget {
  const NewTransactionDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No New Transactions',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: blueMainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
