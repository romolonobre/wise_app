import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'wise_card_caontent.dart';

class WiseBankCardListView extends StatelessWidget {
  const WiseBankCardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: Get.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(
            width: 70,
          ),
          WiseCardContent(
            cardColor: Color(0xff45ec71),
            imagePath: 'assets/images/wise_card1.png',
            cardNumber: '∗∗∗∗ ∗∗∗∗ ∗∗∗∗ 7364',
            expiryDate: '03/22',
            cardType: 'VISA',
            leftRigh: -14,
            topBottom: 20,
          ),
          WiseCardContent(
            cardColor: Color(0xff919de1),
            imagePath: 'assets/images/wise_card2.png',
            cardNumber: '∗∗∗∗ ∗∗∗∗ ∗∗∗∗ 3212',
            expiryDate: '05/29',
            cardType: 'VISA',
            leftRigh: 248,
            topBottom: 90,
          ),
          WiseCardContent(
            cardColor: Color(0xff919de1),
            imagePath: 'assets/images/wise_card2.png',
            cardNumber: ' Add new card',
            expiryDate: '',
            cardType: 'VISA',
            leftRigh: 248,
            topBottom: 90,
          ),
        ],
      ),
    );
  }
}
