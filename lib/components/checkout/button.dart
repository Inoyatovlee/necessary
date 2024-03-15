import 'package:button_hide/config/imports.dart';

// ignore: must_be_immutable
class checkout_button extends StatelessWidget {
  String text;
  dynamic iconn;
  checkout_button({super.key, this.text = "Text", this.iconn});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          iconn,
          SizedBox(width: 25),
          Text(
            text,
            style: TextStyle(fontSize: 17, color: AppColor.dis),
          )
        ],
      ),
    );
  }
}
