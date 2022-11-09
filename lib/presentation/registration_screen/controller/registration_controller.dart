import '/core/app_export.dart';
import 'package:dhifflug/presentation/registration_screen/models/registration_model.dart';
import 'package:flutter/material.dart';

class RegistrationController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameOneOneController = TextEditingController();

  TextEditingController frameOneTwoController = TextEditingController();

  TextEditingController frameOneThreeController = TextEditingController();

  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
    frameOneOneController.dispose();
    frameOneTwoController.dispose();
    frameOneThreeController.dispose();
  }
}
