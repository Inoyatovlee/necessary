import 'package:button_hide/config/imports.dart';

// ignore: must_be_immutable
class Input_2 extends StatelessWidget {
  String? hindText;
  String? label;
  bool? denger;
  String? demgerText;
  TextEditingController? controller;
  Function? changed;
  dynamic iconn;
  dynamic width1;

  Input_2({
    super.key,
    this.hindText,
    this.width1,
    this.iconn,
    this.controller,
    this.changed,
    this.label,
    this.denger = false,
    this.demgerText = "Error text",
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          label == null
              ? const SizedBox()
              : Column(children: [
                  Text(
                    label!,
                    style: TextStyle(color: AppColor.dis, fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                ]),
          TextFormField(
            cursorColor: AppColor.non,
            controller: controller,
            onChanged: (value) {
              if (changed != null) {
                changed!(value);
              }
            },
            decoration: InputDecoration(
              // prefixIcon: Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 16),
              // ),

              labelText: hindText,
              suffixIcon: iconn,
              errorText: denger! ? demgerText : null,
              // filled: true,
              // fillColor: AppColor.blue3,
              hintStyle: TextStyle(color: AppColor.dis, fontSize: 17),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 25, vertical: 18),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.dis.withOpacity(0.6)),
                  borderRadius: BorderRadius.circular(20)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.white1, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
            ),
          ),
        ],
      ),
    );
  }
}
