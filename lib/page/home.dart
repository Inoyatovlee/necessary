import 'package:button_hide/config/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
          extendBodyBehindAppBar: true,
          body: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            decoration: BoxDecoration(
                image: DecorationImage(
                    scale: 5,
                    image: AssetImage(AppImages.ellipse_10),
                    fit: BoxFit.fill)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 60, bottom: 130, right: 260),
                    // child: SvgPicture.asset(AppImages.vecte,
                    //     width: 100, height: 100, fit: BoxFit.cover),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                          backgroundColor: AppColor.white,
                          child: Image.asset(
                            AppImages.box,
                            height: 30,
                          )),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 25),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, bottom: 30),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  AppImages.box,
                                  height: 40,
                                  width: 40,
                                )),
                          ),
                        ),
                        Text("Non-Contact",
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.w900,
                                color: AppColor.non)),
                        Text("Deliveries",
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.w900,
                                color: AppColor.non)),
                        const SizedBox(height: 30),
                        Text(
                          "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.",
                          style: TextStyle(fontSize: 15, color: AppColor.dis),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 50),
                        Button1(
                            text: "ORDER NOW",
                            onTap: () {
                              Get.to(const Categories());
                            },
                            color: AppColor.green,
                            textcolor: AppColor.white),
                        const SizedBox(height: 10),
                        Button1(
                            text: "DISMISS",
                            onTap: () {},
                            color: AppColor.white,
                            textcolor: AppColor.dis),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ));
    });
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
          color: AppColor.blue3, borderRadius: BorderRadius.circular(100)),
    );
  }
}
