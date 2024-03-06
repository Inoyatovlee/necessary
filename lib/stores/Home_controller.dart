import 'package:button_hide/config/imports.dart';

class HomeController extends GetxController {
  final List<String> imagePaths = [
    AppImages.media,
    AppImages.vegetables,
    AppImages.vegetables1
  ];

  late List<Widget> pages;

  int activePage = 0;

  PageController pageController = PageController(initialPage: 0);

  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageController.page == imagePaths.length - 1) {
        // oxirgi rasimda ekanligini tekshiradi
        pageController.animateToPage(0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      } else {
        pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      }
    });
  }
}
