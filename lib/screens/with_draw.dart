// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piggywallet/constant/constant.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  var amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Purple Box
              Container(
                height: size.height * 0.5,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: Text(
                                  "<",
                                  style: boldcontent,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "Withdraw",
                            style: boldcontent,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                          ),
                        ],
                      ),
                      //Credit Card
                      Container(
                        margin: const EdgeInsets.only(top: 20),
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Amount :",
                      style: boldcontent,
                    ),
                    Form(
                      child: Row(
                        children: [
                          Flexible(
                            child: TextFormField(
                              controller: amount,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp("[0-9]"))
                              ],
                              cursorColor: Colors.white,
                              textAlign: TextAlign.end,
                              style: boldcontent,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                hintText: "0",
                                hintStyle: boldcontent,
                              ),
                            ),
                          ),
                          const Text("  Baht", style: boldcontent),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 1,
                      thickness: 2,
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.only(top: 10),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MoneyBox(
                            size: size,
                            amount: 20,
                            ontap: () {
                              amount.text = "20";
                            },
                          ),
                          MoneyBox(
                            size: size,
                            amount: 30,
                            ontap: () {
                              amount.text = "30";
                            },
                          ),
                          MoneyBox(
                            size: size,
                            amount: 40,
                            ontap: () {
                              amount.text = "40";
                            },
                          ),
                          MoneyBox(
                            size: size,
                            amount: 50,
                            ontap: () {
                              amount.text = "50";
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "note :",
                      style: subtitle,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: size.height * 0.06,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Form(
                        child: TextFormField(
                          cursorColor: Colors.white,
                          autofocus: false,
                          textAlign: TextAlign.end,
                          style: subtitle,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                            hintText: "Ex. for friend",
                            hintStyle: subtitle,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    GestureDetector(
                      child: Container(
                        width: double.infinity,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "SUMMIT",
                            style: boldcontent,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MoneyBox extends StatelessWidget {
  MoneyBox({
    super.key,
    required this.size,
    required this.amount,
    required this.ontap,
  });

  final Size size;
  final int amount;
  void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: size.height * 0.04,
        width: size.width * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.white),
        ),
        child: Center(
          child: Text(
            "$amount",
            style: subtitle,
          ),
        ),
      ),
    );
  }
}
