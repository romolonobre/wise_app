import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          Wise_Card_Content(
            cardColor: Color(0xff45ec71),
            imagePath: 'assets/images/wise_card1.png',
            cardNumber: '∗∗∗∗ ∗∗∗∗ ∗∗∗∗ 7364',
            expiryDate: '03/22',
            cardType: 'VISA',
            leftRigh: -14,
            topBottom: 20,
          ),
          Wise_Card_Content(
            cardColor: Color(0xff919de1),
            imagePath: 'assets/images/wise_card2.png',
            cardNumber: '∗∗∗∗ ∗∗∗∗ ∗∗∗∗ 3212',
            expiryDate: '05/29',
            cardType: 'VISA',
            leftRigh: 248,
            topBottom: 90,
          ),
          Wise_Card_Content(
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

class Wise_Card_Content extends StatelessWidget {
  final String imagePath;
  final Color cardColor;
  final String cardNumber;
  final String expiryDate;
  final String cardType;
  final double topBottom;
  final double leftRigh;

  const Wise_Card_Content({
    Key? key,
    required this.imagePath,
    required this.cardColor,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardType,
    required this.topBottom,
    required this.leftRigh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: Get.width * 0.6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: cardColor),
        ),
        Positioned(
          left: leftRigh,
          top: topBottom,
          child: CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                height: 70,
                width: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 4),
              Text(
                cardNumber,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                expiryDate,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(cardType,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 19))
            ],
          ),
        )
      ],
    );
  }
}
