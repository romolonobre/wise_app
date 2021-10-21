import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// WISE BANK CARD DYNAMIC WIDGET
/// This widget will help us to stabilish how the
/// wise bank card will be drawn on the screen

class WiseCardContent extends StatelessWidget {
  final String imagePath;
  final Color cardColor;
  final String cardNumber;
  final String expiryDate;
  final String cardType;
  final double topBottom;
  final double leftRigh;

  const WiseCardContent({
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

        /// We use CircleAvatar to make a small gap design on the card

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
              //
              // Wise card logo

              Image.asset(
                imagePath,
                height: 70,
                width: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 4),

              // Wise card number

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

        // Wise card expyre date

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
              const SizedBox(
                width: 20,
              ),

              // Wise card Type (VISA)

              Text(
                cardType,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 19),
              ),
            ],
          ),
        )
      ],
    );
  }
}
