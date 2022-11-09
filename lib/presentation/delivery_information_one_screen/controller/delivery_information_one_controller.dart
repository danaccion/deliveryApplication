import '/core/app_export.dart';
import 'package:dan_s_application3/presentation/delivery_information_one_screen/models/delivery_information_one_model.dart';
import 'package:dan_s_application3/widgets/custom_bottom_bar.dart';

class DeliveryInformationOneController extends GetxController {
  Rx<DeliveryInformationOneModel> deliveryInformationOneModelObj =
      DeliveryInformationOneModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
