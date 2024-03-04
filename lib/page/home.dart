import 'package:button_hide/config/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(217, 48, 42, 42),
        body: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          width: double.maxFinite,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColor.blue1, AppColor.blue2])),
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
                      child:
                          SvgPicture.asset(AppIcon.gene, color: AppColor.non)),
                ),
              ),
              // Padding(
              //   padding:
              //       const EdgeInsets.only(top: 50, bottom: 120, right: 200),
              //   child: Stack(
              //     children: [
              //       CircleAvatar(
              //           radius: (37),
              //           backgroundColor: AppColor.white,
              //           child: ClipRRect(
              //               borderRadius: BorderRadius.circular(50),
              //               child: Image.asset(
              //                 "assets/images/vecte.png",
              //                 scale: 70,
              //               )))
              //     ],
              //   ),
              // ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
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
                      padding: const EdgeInsets.only(top: 80, bottom: 50),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: SvgPicture.asset(
                              AppIcon.gene,
                              color: AppColor.non,
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
                        onTap: () {},
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
        ));
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
