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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "data",
                //   style: TextStyle(fontSize: 14, color: AppColor.dis),
                // ),
                Input(
                  hindText: "dsds",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
