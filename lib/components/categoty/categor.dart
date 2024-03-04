import 'package:button_hide/config/imports.dart';

// buni "No_cart "bilan ham ishlatilaveradi

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
            Cart_(
                screenWidth: 0.20,
                images: AppImages.media2,
                text_1: "Vegetables",
                text_2: "(94)"),
            Cart_(
                screenWidth: 0.20,
                images: AppImages.media3,
                text_1: "Fruits",
                text_2: "(78)"),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Cart_(
                screenWidth: 0.20,
                images: AppImages.media4,
                text_1: "Bread",
                text_2: "(32)"),
            Cart_(
                screenWidth: 0.20,
                images: AppImages.media5,
                text_1: "Sweets",
                text_2: "(42)"),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Cart_(
                screenWidth: 0.20,
                images: AppImages.media6,
                text_1: "flour",
                text_2: "(132)"),
            Cart_(
                screenWidth: 0.20,
                images: AppImages.media7,
                text_1: "tea",
                text_2: "(312)"),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Cart_(
                screenWidth: 0.20,
                images: AppImages.media,
                text_1: "Bread",
                text_2: "(92)"),
            Cart_(
                screenWidth: 0.20,
                images: AppImages.vegetables1,
                text_1: "Sweets",
                text_2: "(30)"),
          ],
        ),
      ],
    );
  }
}
