// 4:08 gacha faqa o'zi odiy iconlarsiz aylantirib bo'linishi
import 'package:button_hide/config/imports.dart';

class Infopage extends StatefulWidget {
  const Infopage({super.key});

  @override
  State<Infopage> createState() => _InfopageState();
}

final List<String> imagePaths = [
  AppImages.media2,
  AppImages.media3,
  AppImages.media4
];

late List<Widget> _pages;

class _InfopageState extends State<Infopage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = List.generate(imagePaths.length,
        (index) => ImagePlaceholder(imagePath: imagePaths[index]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            child: PageView.builder(
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  // Rasim widgetini qaytarish
                  return _pages[index];
                }),
          )
        ],
      ),
    );
  }
}

//birinchi shu imageni chiqarib olamiz
class ImagePlaceholder extends StatelessWidget {
  final String? imagePath;
  const ImagePlaceholder({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath!,
      fit: BoxFit.cover,
    );
  }
}
