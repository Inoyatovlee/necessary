// 4:08 gacha faqa o'zi odiy iconlarsiz aylantirib bo'linishi
// 8:42 dan keyin o'zi avto aylanishga o'tadi

import 'package:button_hide/config/imports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class InfoPageDo extends StatefulWidget {
  const InfoPageDo({super.key});

  @override
  State<InfoPageDo> createState() => _InfoPageDoState();
}

class _InfoPageDoState extends State<InfoPageDo> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.pages = List.generate(imagePaths.length,
        (index) => ImagePlaceholder(imagePath: imagePaths[index]));
    controller.startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                                padding: EdgeInsets.symmetric(horizontal: 5),
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
                          SizedBox(height: 15),
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 300,
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
                      SizedBox(height: 20),
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
                      SizedBox(height: 15),
                      Text(
                        "~ 150 gr / piece",
                        style: TextStyle(color: AppColor.green, fontSize: 17),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
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
      //280
      fit: BoxFit.cover,
    );
  }
}
