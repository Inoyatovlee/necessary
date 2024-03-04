import 'package:button_hide/components/Categories/Card.dart';
import 'package:button_hide/config/imports.dart';

class OmmabobCategory extends StatelessWidget {
  const OmmabobCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card_(screenWidth: 0.20),
            Card_(screenWidth: 0.20),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card_(screenWidth: 0.20),
            Card_(screenWidth: 0.20),
          ],
        ),
      ],
    );
  }
}
