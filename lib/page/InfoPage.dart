import 'package:button_hide/config/imports.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ImagePage_(),
      Container(
        color: AppColor.non,
        height: 300,
      )
    ]);
  }
}
