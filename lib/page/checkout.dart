import 'package:button_hide/components/checkout/button.dart';
import 'package:button_hide/config/imports.dart';

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
            text_ch(text: "Payment method"),
            checkout_button(
              iconn: Icon(Icons.credit_card_outlined,
                  color: AppColor.non, size: 27),
              text: "**** **** **** 4747",
            ),
            text_ch(text: "Delivery address"),
            checkout_button(
                iconn: Icon(Icons.home_outlined, color: AppColor.non, size: 27),
                text: '''Alexandra Smith
Cesu 31 k-2 5.st, SIA Chili
Riga
LV-1012
Latvia
'''),
            text_ch(text: "Delivery options"),
            checkout_button(
              iconn: Icon(Icons.directions_run_outlined,
                  color: AppColor.non, size: 27),
              text: "I'll pick it up myself",
            ),
            checkout_button(
              iconn: Icon(Icons.directions_bike_outlined,
                  color: AppColor.non, size: 27),
              text: "By courier",
            ),
            checkout_button(
              iconn:
                  Icon(Icons.device_hub_rounded, color: AppColor.non, size: 27),
              text: "By Drone",
            ),
            text_ch(text: "Non-contact-delivery")
          ],
        ),
      ),
    );
  }
}
