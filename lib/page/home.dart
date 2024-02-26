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
        body: Container(
      padding: EdgeInsets.zero,
      width: double.maxFinite,
      color: AppColor.non,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: SizedBox(
              height: 60,
              width: 60,
              child: CircleAvatar(
                  backgroundColor: AppColor.white,
                  child: SvgPicture.asset(
                    AppIcon.gene,
                    color: AppColor.dis,
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            width: double.maxFinite,
            height: 300,
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        AppIcon.gene,
                        color: AppColor.dis,
                      )),
                ),
                const SizedBox(height: 16),
                Container(
                  child: const Text(
                    "Non-Contact Deliveries",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                )
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
