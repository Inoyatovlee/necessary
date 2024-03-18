import 'package:button_hide/config/imports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  HomeController controller = Get.put(HomeController());
  @override
  void initState() {
    super.initState();
    controller.pages = List.generate(imagePaths.length,
        (index) => ImagePlaceholder(imagePath: imagePaths[index]));
    controller.startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //stacda rasim >. . . <
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 260, //MediaQuery.of(context).size.height / 4,
                    child: PageView.builder(
                        controller: controller.pageController,
                        itemCount: imagePaths.length,
                        onPageChanged: (value) {
                          setState(() {
                            controller.activePage = value;
                          });
                        },
                        itemBuilder: (context, index) {
                          // Rasim widgetini qaytarish
                          return controller.pages[index];
                        }),
                  ),
                  // Sahifa ko'rsatkichi uchun kod
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List<Widget>.generate(
                              controller.pages.length,
                              (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: InkWell(
                                  onTap: () {
                                    controller.pageController.animateToPage(
                                        index,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                  },
                                  child: CircleAvatar(
                                      radius: 4,
                                      backgroundColor:
                                          controller.activePage == index
                                              ? Colors.white
                                              : Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                            ),
                            //child: ,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                // height: 300,
                decoration: BoxDecoration(
                  color: AppColor.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Boston Lettuce",
                        style: TextStyle(
                            color: AppColor.non,
                            fontSize: 30,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                          text: "1.10",
                          style: TextStyle(
                              color: AppColor.non,
                              fontWeight: FontWeight.w600,
                              fontSize: 32),
                          children: [
                            TextSpan(
                                text: " &/piece",
                                style: TextStyle(
                                    color: AppColor.dis,
                                    fontWeight: FontWeight.w100,
                                    fontSize: 24))
                          ]),
                    ),
                    const SizedBox(height: 15),
                    Text("~ 150 gr / piece",
                        style: TextStyle(color: AppColor.green, fontSize: 17)),
                    const SizedBox(height: 30),
                    Text("Spain",
                        style: TextStyle(
                            color: AppColor.non,
                            fontSize: 22,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 16),
                    Text(
                        "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
                        style: TextStyle(color: AppColor.dis, fontSize: 17)),
                    const SizedBox(height: 56),
                    Row(
                      children: [
                        Card_icon_(
                            images: AppImages.lov,
                            height: 56,
                            width: 78,
                            color: AppColor.white,
                            iconcolor: AppColor.dis),
                        Spacer(),
                        Card_icon_(
                            images: AppImages.shopping,
                            height: 56,
                            width: 255,
                            color: AppColor.green,
                            iconcolor: AppColor.white,
                            onTap: () {
                              Get.to(DebitCard());
                            }),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
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
      //280
      fit: BoxFit.cover,
    );
  }
}
