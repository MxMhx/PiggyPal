import 'package:flutter/material.dart';
import '../constant/constant.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentCard extends StatelessWidget {
  const PercentCard({super.key, required this.size, required this.coin});

  final Size size;
  final String coin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.13,
      width: size.width * 0.23,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[primaryColor, secondaryColor]),
      ),
      child: Center(
        child: CircularPercentIndicator(
          radius: 30.0,
          lineWidth: 6.0,
          animation: true,
          percent: 0.7,
          center: const Text(
            "70%",
            style: subcontent,
          ),
          footer: Text(
            "$coin coin",
            style: subcontent,
          ),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Colors.white,
        ),
      ),
    );
  }
}
