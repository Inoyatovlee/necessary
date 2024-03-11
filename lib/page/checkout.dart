import 'package:button_hide/components/checkout/text_cha.dart';
import 'package:button_hide/config/imports.dart';
import 'package:flutter/material.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            text_ch(
              text: "Payment method",
            )
          ],
        ),
      ),
    );
  }
}
