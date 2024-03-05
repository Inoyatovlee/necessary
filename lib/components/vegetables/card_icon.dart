import 'package:button_hide/config/imports.dart';

class Card_icon extends StatelessWidget {
  const Card_icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 40,
          width: 70,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.white1),
              color: AppColor.white,
              borderRadius: BorderRadius.circular(8)),
          child: Image.asset(AppImages.shopping,
              color: AppColor.non, height: 20, width: 20),
        ),
        const SizedBox(width: 5),
        Container(
          height: 40,
          width: 70,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColor.green, borderRadius: BorderRadius.circular(8)),
          child: Image.asset(AppImages.lov,
              color: Colors.white, height: 20, width: 20),
        ),
      ],
    );
  }
}
