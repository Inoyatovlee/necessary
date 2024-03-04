import 'package:button_hide/config/imports.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Categories",
                    style: TextStyle(
                        color: AppColor.non,
                        fontSize: 34,
                        fontWeight: FontWeight.w600)),
                const SizedBox(height: 27),
                Input(hindText: "Search"),
                const SizedBox(height: 42),
                const OmmabobCategory(),
              ],
            ),
          ),
        ));
  }
}
