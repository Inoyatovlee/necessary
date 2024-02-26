import 'package:button_hide/config/imports.dart';

// ignore: must_be_immutable
class Button1 extends StatelessWidget {
  String text;
  Function? onTap;
  dynamic color;
  dynamic textcolor;
  Button1({
    super.key,
    this.text = "Text",
    this.onTap,
    this.color,
    this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //agar onTap nullga teng bo;lmasa
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: TextStyle(
              color: textcolor, fontWeight: FontWeight.w600, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
