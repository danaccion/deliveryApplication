import '../controller/delivery_information_one_controller.dart';
import 'package:get/get.dart';

class DeliveryInformationOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryInformationOneController());
  }
}
