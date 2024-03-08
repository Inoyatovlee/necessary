import 'package:button_hide/config/imports.dart';
import 'package:button_hide/page/debit_card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card_icon extends StatelessWidget {
  dynamic height1;
  dynamic height2;
  dynamic width1;
  dynamic width2;
  dynamic color1;
  dynamic color2;
  dynamic iconcolor1;
  dynamic iconcolor2;

  Card_icon(
      {super.key,
      this.height1,
      this.height2,
      this.width1,
      this.width2,
      this.color1,
      this.color2,
      this.iconcolor1,
      this.iconcolor2});
  // final double screenWidth;
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: height1, //40 + 70
          width: width1,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.white1),
              color: color1,
              borderRadius: BorderRadius.circular(8)),
          child: Image.asset(AppImages.lov,
              color: iconcolor1, height: 20, width: 20),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            Get.to(DebitCard());
          },
          child: Container(
            height: height2,
            width: width2,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: color2, borderRadius: BorderRadius.circular(8)),
            child: Image.asset(AppImages.shopping,
                color: iconcolor2, height: 20, width: 20),
          ),
        ),
      ],
    );
  }
}
