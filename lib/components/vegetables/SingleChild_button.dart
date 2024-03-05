import 'package:button_hide/config/imports.dart';

class SingleChild_button extends StatelessWidget {
  const SingleChild_button({
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
              onPressed: () {}, child: Text("Cabbage and lettuce (14)")),
          SizedBox(width: 8),
          ElevatedButton(
              onPressed: () {}, child: Text("Cucumbers and tomatoes (10)")),
          SizedBox(width: 8),
          ElevatedButton(onPressed: () {}, child: Text("and tomatoes (10)")),
        ],
      ),
    );
  }
}
