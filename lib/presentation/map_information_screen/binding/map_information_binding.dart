import '../controller/map_information_controller.dart';
import 'package:get/get.dart';

class MapInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapInformationController());
  }
}
