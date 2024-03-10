import 'package:button_hide/config/imports.dart';

class DebitCard extends StatefulWidget {
  const DebitCard({super.key});

  @override
  State<DebitCard> createState() => _DebitCardState();
}

class _DebitCardState extends State<DebitCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              "Credit / Debit card",
              style: TextStyle(
                  color: AppColor.non,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 21),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(AppImages.card_ta,
                  height: 240, width: double.maxFinite),
            ),
            SizedBox(height: 21),
            Image.asset(AppImages.vector_came,
                height: 18, width: 22, alignment: Alignment.bottomCenter),
            SizedBox(height: 13),
            Input_2(label: "Name on card"),
            SizedBox(height: 24),
            Input_2(
                label: "Card number", iconn: Image.asset(AppImages.mcsymbol1)),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Roe_fild(
                  label: "Expiry date",
                  width1: 170,
                ),
                Roe_fild(
                  label: "CVC",
                  width1: 170,
                  iconn: Image.asset(AppImages.hint),
                ),
              ],
            ),
            SizedBox(height: 55),
            Button1(
              text: "USE THIST  CARD",
              color: AppColor.green,
              textcolor: AppColor.white,
            )
          ],
        ),
      ),
    );
  }
}
