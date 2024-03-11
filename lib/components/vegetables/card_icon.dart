import 'package:button_hide/config/imports.dart';

// ignore: must_be_immutable
class Card_icon_ extends StatelessWidget {
  dynamic images;
  Function? onTap;
  dynamic height;
  dynamic width;
  dynamic color;
  dynamic iconcolor;

  Card_icon_({
    super.key,
    required this.images,
    this.onTap,
    this.height,
    this.width,
    this.color,
    this.iconcolor,
  });
  // final double screenWidth;
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (onTap != null) {
              onTap!();
            }
          },
          child: Container(
            height: height,
            width: width,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(8)),
            child: Image.asset(images, color: iconcolor, height: 20, width: 20),
          ),
        ),
      ],
    );
  }
}
