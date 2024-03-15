import 'package:button_hide/config/imports.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.zero,
          height: 80,
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              border: Border.all(color: AppColor.dis),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(controller.menus.length, (index) {
                  var item = controller.menus[index];
                  return InkWell(
                      onTap: () {
                        controller.setWidget(item['id']);
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(item['icon'],
                              width: 30,
                              color: item['id'] == controller.currentPageId
                                  ? AppColor.chec
                                  : AppColor.dis)));
                })),
          ),
        ),
        body: controller.currentWidget(),
      );
    });
  }
}
