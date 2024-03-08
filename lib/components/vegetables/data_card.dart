import 'package:button_hide/config/imports.dart';
import 'package:button_hide/page/InfoPageDo.dart';

// ignore: camel_case_types
class data_card extends StatelessWidget {
  dynamic images;
  String name;
  String narx;
  data_card({
    super.key,
    required this.images,
    required this.name,
    required this.narx,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(InfoPageDo());
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            //border: Border.all(color: AppColor.white1),
            //color: AppColor.white,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhysicalModel(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(images,
                    fit: BoxFit.cover, height: 130, width: 170)),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: TextStyle(
                        color: AppColor.non,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                const SizedBox(height: 14),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: narx,
                      style: TextStyle(
                          color: AppColor.non,
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                    ),
                    WidgetSpan(
                        child: Icon(
                      Icons.euro,
                      color: AppColor.dis,
                      size: 18,
                    )),
                    TextSpan(
                        text: " / piece",
                        style: TextStyle(
                            color: AppColor.dis,
                            fontWeight: FontWeight.w100,
                            fontSize: 16)),
                  ]),
                ),
                const SizedBox(height: 25),
                Card_icon(
                  height1: 40,
                  height2: 40,
                  width1: 70,
                  width2: 70,
                  color2: AppColor.green,
                  color1: AppColor.white,
                  iconcolor1: AppColor.dis,
                  iconcolor2: AppColor.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
