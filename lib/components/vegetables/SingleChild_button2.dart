import 'package:button_hide/config/imports.dart';

class SingleChild_button2 extends StatelessWidget {
  const SingleChild_button2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        runAlignment: WrapAlignment.spaceBetween,
        children: [
          ElevatedButton(
              onPressed: () {}, child: Text("Oinons and garlic (8)")),
          SizedBox(width: 8),
          ElevatedButton(onPressed: () {}, child: Text("Peppers (7)")),
          SizedBox(width: 8),
          ElevatedButton(
              onPressed: () {}, child: Text("Potatoes and carrots (4)")),
          SizedBox(width: 8),
          ElevatedButton(onPressed: () {}, child: Text("and carrots (4)")),
        ],
      ),
    );
  }
}
