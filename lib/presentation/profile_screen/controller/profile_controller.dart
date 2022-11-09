import '/core/app_export.dart';
import 'package:dan_s_application3/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  TextEditingController languageController = TextEditingController();

  TextEditingController logoutController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    logoutController.dispose();
  }
}
