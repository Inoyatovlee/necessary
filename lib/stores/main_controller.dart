import 'package:button_hide/config/imports.dart';
import 'package:button_hide/page/InfoPageDo.dart';

class MainController extends GetxController {
  int currentPageId = 1;

  List menus = [
    {"id": 1, "icon": AppImages.lov, "page": const Categories()},
    {"id": 2, "icon": AppImages.shopping, "page": const DebitCard()},
    {"id": 3, "icon": AppImages.vector_came, "page": InfoPageDo()},
  ];

  setWidget(int id) {
    currentPageId = id;
    update();
  }

  currentWidget() {
    var index = menus.indexWhere((element) => element['id'] == currentPageId);
    if (index > -1) {
      return menus[index]['page'];
    }
  }
}
