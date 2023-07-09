import 'package:get/get.dart';
import '../Controllers/auth_controller.dart';
import '../Controllers/navigation_controller.dart';

class InitController implements Bindings {
  @override
  void dependencies() {
    initializeController();
  }
}

void initializeController() {
  Get.put(AuthController(), permanent: true);
  Get.put(NavigationController(), permanent: true);
}
