import 'package:button_hide/config/imports.dart';
import 'package:button_hide/page/checkout.dart';

class DebitCard extends StatefulWidget {
  const DebitCard({super.key});

  @override
  State<DebitCard> createState() => _DebitCardState();
}

class _DebitCardState extends State<DebitCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Credit / Debit card",
                style: TextStyle(
                    color: AppColor.non,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 21),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(AppImages.card_ta,
                    height: 240, width: double.maxFinite),
              ),
              const SizedBox(height: 21),
              Image.asset(AppImages.vector_came,
                  height: 18, width: 22, alignment: Alignment.bottomCenter),
              const SizedBox(height: 13),
              Input_2(label: "Name on card"),
              const SizedBox(height: 24),
              Input_2(
                  label: "Card number",
                  iconn: Image.asset(AppImages.mcsymbol1)),
              const SizedBox(height: 24),
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
              const SizedBox(height: 55),
              Button1(
                text: "USE THIST  CARD",
                color: AppColor.green,
                textcolor: AppColor.white,
                onTap: () {
                  Get.to(checkout());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
