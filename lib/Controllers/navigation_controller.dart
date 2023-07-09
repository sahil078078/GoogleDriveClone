import 'package:get/get.dart';

class NavigationController extends GetxController {
  final RxString tab = "Storage".obs;
  void changeTab(String givenTab) {
    tab.value = givenTab;
  }
}
