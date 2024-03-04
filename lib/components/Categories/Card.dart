import 'package:button_hide/config/imports.dart';

class Card_ extends StatelessWidget {
  const Card_({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      color: AppColor.white1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.asset(
            AppImages.vecte,
            height: 140,
            width: screenWidth * 0.41,
          ),
          SizedBox(height: 16),
          Text("Vegetables"),
          SizedBox(height: 10),
          Text("(43)")
        ],
      ),
    );
  }
}
