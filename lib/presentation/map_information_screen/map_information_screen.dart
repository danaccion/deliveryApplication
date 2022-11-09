import 'controller/map_information_controller.dart';
import 'package:dhifflug/core/app_export.dart';
import 'package:dhifflug/widgets/app_bar/appbar_image.dart';
import 'package:dhifflug/widgets/app_bar/custom_app_bar.dart';
import 'package:dhifflug/widgets/custom_button.dart';
import 'package:dhifflug/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MapInformationScreen extends GetWidget<MapInformationController> {
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(326.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                right: 10, bottom: 10),
                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgShape,
                                                height: getVerticalSize(128.00),
                                                width: getHorizontalSize(
                                                    199.00)))),
                                    CustomAppBar(
                                        height: getVerticalSize(56.00),
                                        leadingWidth: 360,
                                        leading: AppbarImage(
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(6.00),
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            margin: getMargin(
                                                left: 33,
                                                top: 21,
                                                right: 321,
                                                bottom: 16),
                                            onTap: onTapArrowleft2),
                                        styleType: Style.bgFillBluegray1008c),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: getPadding(top: 10),
                                            child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgBasemapimage,
                                                height: getVerticalSize(270.00),
                                                width:
                                                    getHorizontalSize(360.00))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 37, right: 25),
                              child: Text("lbl_location".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12))),
                      Padding(
                          padding: getPadding(left: 25, top: 7, right: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CommonImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getVerticalSize(25.00),
                                    width: getHorizontalSize(14.00)),
                                Padding(
                                    padding:
                                        getPadding(left: 4, top: 3, bottom: 4),
                                    child: Text("msg_cabantian_buha".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold12)),
                                Padding(
                                    padding:
                                        getPadding(left: 5, top: 5, bottom: 4),
                                    child: CommonImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightBlack900,
                                        height: getVerticalSize(15.00),
                                        width: getHorizontalSize(10.00)))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 34, right: 25),
                              child: Text("lbl_landmark".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12))),
                      CustomTextFormField(
                          width: 309,
                          focusNode: FocusNode(),
                          controller: controller.rectangleThirteenController,
                          margin: getMargin(left: 25, top: 5, right: 25),
                          shape: TextFormFieldShape.RoundedBorder10),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 15, right: 25),
                              child: Text("msg_contact_person".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12))),
                      CustomTextFormField(
                          width: 309,
                          focusNode: FocusNode(),
                          controller: controller.groupTwelveController,
                          hintText: "lbl_63".tr,
                          margin: getMargin(left: 25, top: 5, right: 25),
                          shape: TextFormFieldShape.RoundedBorder10,
                          fontStyle: TextFormFieldFontStyle.PoppinsSemiBold12,
                          textInputAction: TextInputAction.done),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(top: 32, bottom: 5),
                              decoration: AppDecoration.fillBluegray1004c,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomButton(
                                        width: 310,
                                        text: "msg_confirm_informa2".tr,
                                        margin: getMargin(
                                            left: 28,
                                            top: 26,
                                            right: 22,
                                            bottom: 5))
                                  ])))
                    ])))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
