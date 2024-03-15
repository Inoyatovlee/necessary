import 'package:button_hide/config/imports.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  bool val1 = true;

  onChangeMethod1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
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
            customSwitch("Non-contact-delivery", val1, onChangeMethod1)
          ],
        ),
      ),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: AppColor.non, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Switch(
              activeColor: AppColor.white,
              activeTrackColor: AppColor.chec,
              value: val,
              onChanged: (newValue) {
                onChangeMethod(newValue);
              })
        ],
      ),
    );
  }
}
