import 'controller/splash_controller.dart';
import 'package:dan_s_application3/core/app_export.dart';
import 'package:dan_s_application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(right: 10),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgShape,
                                  height: getVerticalSize(126.00),
                                  width: getHorizontalSize(199.00)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 22, top: 34, right: 22),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgUndrawdelivery,
                                  height: getVerticalSize(125.00),
                                  width: getHorizontalSize(300.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 22, top: 91, right: 22),
                              child: Text("msg_fast_and_secure".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold18))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(267.00),
                              margin: getMargin(left: 22, top: 26, right: 22),
                              child: Text("msg_lorem_ipsum_dol".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular13))),
                      CustomButton(
                          width: 310,
                          text: "lbl_get_started".tr,
                          margin: getMargin(
                              left: 22, top: 146, right: 22, bottom: 5),
                          alignment: Alignment.center)
                    ])))));
  }
}
