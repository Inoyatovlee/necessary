import 'package:button_hide/config/imports.dart';

// ignore: must_be_immutable
class Input extends StatelessWidget {
  String? hindText;
  String? label;
  bool? denger;
  String? demgerText;
  TextEditingController? controller;
  Function? changed;

  Input({
    super.key,
    this.hindText,
    this.controller,
    this.changed,
    this.label,
    this.denger = false,
    this.demgerText = "Error text",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            hintText: hindText,
            errorText: denger! ? demgerText : null,
            // filled: true,
            // fillColor: AppColor.blue3,
            hintStyle: TextStyle(color: AppColor.dis),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.dis.withOpacity(0.6)),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.non, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(16))),
          ),
        ),
      ],
    );
  }
}
