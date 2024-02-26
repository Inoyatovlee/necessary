import 'package:button_hide/config/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(top: -100, child: CircleContainer()),
        Positioned(top: -199, left: 100, child: CircleContainer()),
        SingleChildScrollView(
            child: Column(
          children: [
            Container(
              child: Icon(Icons.add_a_photo_rounded),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            )
          ],
        ))
      ],
    );
  }
}

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(100)),
    );
  }
}
