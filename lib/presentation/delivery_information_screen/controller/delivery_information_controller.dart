import '/core/app_export.dart';
import 'package:dhifflug/presentation/delivery_information_screen/models/delivery_information_model.dart';
import 'package:flutter/material.dart';

class DeliveryInformationController extends GetxController {
  TextEditingController groupFiveController = TextEditingController();

  TextEditingController groupSixController = TextEditingController();

  TextEditingController groupSevenController = TextEditingController();

  Rx<DeliveryInformationModel> deliveryInformationModelObj =
      DeliveryInformationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiveController.dispose();
    groupSixController.dispose();
    groupSevenController.dispose();
  }
}
