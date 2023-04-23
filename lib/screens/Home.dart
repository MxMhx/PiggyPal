// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../widgets/percent_card.dart';
import '../widgets/transaction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "My Wallet",
                        style: title,
                      ),
                      Text(
                        "Smith Row Ji",
                        style: subtitle,
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(30)),
                  )
                ],
              ),
              //Credit Card
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                padding: const EdgeInsets.all(30),
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/icons/bg.jpg"),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "15000 ฿",
                      style: header,
                    ),
                    Text(
                      "Total Balance",
                      style: subtitle,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PercentCard(
                      size: size,
                      coin: "10",
                    ),
                    PercentCard(
                      size: size,
                      coin: "5",
                    ),
                    PercentCard(
                      size: size,
                      coin: "2",
                    ),
                    PercentCard(
                      size: size,
                      coin: "1",
                    ),
                  ],
                ),
              ),
              //Button Card
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/withdraw');
                },
                child: Container(
                  width: double.infinity,
                  height: size.height * 0.1,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        secondaryColor,
                        secondaryColor.withOpacity(0.7),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/withdraw.png',
                        width: size.width * 0.15,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text("Withdraw", style: boldcontent),
                      const Spacer(),
                      const Text(">", style: boldcontent),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Transaction", style: boldcontent),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/transaction");
                    },
                    child: Text(
                      "see all",
                      style: subtitle.copyWith(color: red),
                    ),
                  )
                ],
              ),
              TransactionBox(
                size: size,
                imagename: "transfer.png",
                type: "Deposit",
                date: "29 Jan 2003",
                amount: 56,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
