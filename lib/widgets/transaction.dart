import 'package:flutter/material.dart';
import '../constant/constant.dart';

class TransactionBox extends StatelessWidget {
  const TransactionBox({
    super.key,
    required this.size,
    required this.imagename,
    required this.amount,
    required this.date,
    required this.type,
  });

  final Size size;
  final String imagename;
  final String type;
  final String date;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: size.height * 0.1,
      decoration: BoxDecoration(
        color: thirdColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/$imagename',
            width: size.width * 0.13,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                type,
                style: subtitle,
              ),
              Text(
                date,
                style: subcontent,
              ),
            ],
          ),
          const Spacer(),
          Text(
            "$amount ฿",
            style: boldcontent,
          ),
        ],
      ),
    );
  }
}
