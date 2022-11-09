import '/core/app_export.dart';
import 'package:dan_s_application3/presentation/map_information_screen/models/map_information_model.dart';
import 'package:flutter/material.dart';

class MapInformationController extends GetxController {
  TextEditingController rectangleThirteenController = TextEditingController();

  TextEditingController groupTwelveController = TextEditingController();

  Rx<MapInformationModel> mapInformationModelObj = MapInformationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    rectangleThirteenController.dispose();
    groupTwelveController.dispose();
  }
}
