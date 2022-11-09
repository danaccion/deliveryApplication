import '../controller/delivery_information_controller.dart';
import 'package:get/get.dart';

class DeliveryInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryInformationController());
  }
}
