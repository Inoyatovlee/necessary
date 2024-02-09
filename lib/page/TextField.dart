import 'package:button_hide/config/import.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: const Column(
          children: [
            TextField(),
            SizedBox(height: 20),
            BorderTextFieldWithIcon(
              hintText: "email",
              prefixIcon: Icon(
                Icons.people,
              ),
              suffixIcon: Icon(
                Icons.email,
              ),
            ),
            SizedBox(height: 20),
            SimpleTextFieldWithBorder(
              label: "label",
              bordercolor: Colors.green,
            ),
            SizedBox(height: 20),
            MultiLineTextField(
              maxLines: 10,
              bordercolor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
