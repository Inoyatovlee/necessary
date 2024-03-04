import 'package:button_hide/config/imports.dart';

// ignore: must_be_immutable
class Cart_ extends StatelessWidget {
  dynamic images;
  String text_1;
  String text_2;
  Cart_({
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
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.white1),
            color: AppColor.white,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhysicalModel(
              color: Colors.transparent,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                images,
                fit: BoxFit.cover,
                height: 140,
                width: screenWidth * 0.41,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text_1,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColor.non),
                  ),
                  const SizedBox(height: 10),
                  Text(text_2,
                      style: TextStyle(fontSize: 12, color: AppColor.dis))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
