import 'package:button_hide/components/vegetables/SingleChild_button.dart';
import 'package:button_hide/components/vegetables/SingleChild_button2.dart';
import 'package:button_hide/config/imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Vegatables extends StatefulWidget {
  const Vegatables({super.key});

  @override
  State<Vegatables> createState() => _VegatablesState();
}

class _VegatablesState extends State<Vegatables> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(),
      backgroundColor: Color.fromARGB(0, 14, 128, 60),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Positioned(child: Text("")),
              Positioned(child: Image.asset(AppImages.vegetables2))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Vegetables",
                      style: TextStyle(
                          color: AppColor.non,
                          fontSize: 30,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 27),
                  Input(hindText: "Search"),
                  const SizedBox(height: 40),
                  SingleChild_button(),
                  const SizedBox(height: 20),
                  SingleChild_button2(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
