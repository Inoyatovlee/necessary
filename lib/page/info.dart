// 4:08 gacha faqa o'zi odiy iconlarsiz aylantirib bo'linishi
// 8:42 dan keyin o'zi avto aylanishga o'tadi

import 'package:button_hide/config/imports.dart';

// ignore: camel_case_types
class ImagePage_ extends StatefulWidget {
  const ImagePage_({super.key});

  @override
  State<ImagePage_> createState() => _ImagePage_State();
}

final List<String> imagePaths = [
  AppImages.media2,
  AppImages.media3,
  AppImages.media4
];

late List<Widget> _pages;

int _activePage = 0;

final PageController _pageController = PageController(initialPage: 0);

Timer? _timer;

class _ImagePage_State extends State<ImagePage_> {
  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_pageController.page == imagePaths.length - 1) {
        // oxirgi rasimda ekanligini tekshiradi
        _pageController.animateToPage(0,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      } else {
        _pageController.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = List.generate(imagePaths.length,
        (index) => ImagePlaceholder(imagePath: imagePaths[index]));
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: imagePaths.length,
                    onPageChanged: (value) {
                      setState(() {
                        _activePage = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      // Rasim widgetini qaytarish
                      return _pages[index];
                    }),
              ),
              // Sahifa ko'rsatkichi uchun kod
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                        _pages.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: InkWell(
                                onTap: () {
                                  _pageController.animateToPage(index,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeIn);
                                },
                                child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor: _activePage == index
                                        ? Colors.yellow
                                        : Colors.grey),
                              ),
                            )),
                  ),
                ),
              )
            ],
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
