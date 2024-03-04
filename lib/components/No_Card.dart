import 'package:button_hide/config/imports.dart';

// ignore: must_be_immutable
class No_cart extends StatelessWidget {
  dynamic images;
  String text_1;
  String text_2;
  No_cart({
    super.key,
    required this.screenWidth,
    required this.images,
    required this.text_1,
    required this.text_2,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      color: AppColor.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.asset(
            images,
            fit: BoxFit.cover,
            height: 140,
            width: screenWidth * 0.41,
          ),
          SizedBox(height: 16),
          Text(
            text_1,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: AppColor.non),
          ),
          SizedBox(height: 10),
          Text(
            text_2,
            style: TextStyle(fontSize: 12, color: AppColor.dis),
          )
        ],
      ),
    );
  }
}
