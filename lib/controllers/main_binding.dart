import 'package:get/get.dart';
import 'package:psychbeing_app/controllers/authcontroller.dart';

//import 'authcontroller_alt.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}
