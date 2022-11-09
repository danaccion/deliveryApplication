import '/core/app_export.dart';
import 'package:dan_s_application3/presentation/vehicle_screen/models/vehicle_model.dart';

class VehicleController extends GetxController {
  Rx<VehicleModel> vehicleModelObj = VehicleModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
