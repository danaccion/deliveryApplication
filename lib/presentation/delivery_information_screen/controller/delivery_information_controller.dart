import '/core/app_export.dart';
import 'package:dhifflug/presentation/delivery_information_screen/models/delivery_information_model.dart';
import 'package:flutter/material.dart';
import 'package:dhifflug/data/models/orders/post_orders_resp.dart';
import 'package:dhifflug/data/apiClient/api_client.dart';

class DeliveryInformationController extends GetxController {
  TextEditingController groupFiveController = TextEditingController();

  TextEditingController groupSixController = TextEditingController();

  TextEditingController groupSevenController = TextEditingController();

  Rx<DeliveryInformationModel> deliveryInformationModelObj =
      DeliveryInformationModel().obs;

  PostOrdersResp postOrdersResp = PostOrdersResp();

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

  void callCreateOrders(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createOrders(onSuccess: (resp) {
      onCreateOrdersSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onCreateOrdersError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onCreateOrdersSuccess(var response) {
    postOrdersResp = PostOrdersResp.fromJson(response);
  }

  void onCreateOrdersError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
