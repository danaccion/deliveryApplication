import '/core/app_export.dart';
import 'package:dan_s_application3/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 10000), () {
      Get.toNamed(AppRoutes.registrationScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
