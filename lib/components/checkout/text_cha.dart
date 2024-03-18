import 'package:button_hide/config/imports.dart';

// ignore: must_be_immutable
class text_ch extends StatelessWidget {
  String text;

  text_ch({super.key, required this.text, req});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              color: AppColor.non, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        Text(
          "CHANGE",
          style: TextStyle(
              fontSize: 18, color: AppColor.chec, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
