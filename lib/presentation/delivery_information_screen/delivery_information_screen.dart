import 'controller/delivery_information_controller.dart';
import 'package:dhifflug/core/app_export.dart';
import 'package:dhifflug/widgets/app_bar/appbar_image.dart';
import 'package:dhifflug/widgets/app_bar/appbar_title.dart';
import 'package:dhifflug/widgets/app_bar/custom_app_bar.dart';
import 'package:dhifflug/widgets/custom_button.dart';
import 'package:dhifflug/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class DeliveryInformationScreen
    extends GetWidget<DeliveryInformationController> {
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
                              height: getVerticalSize(155.00),
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
                                        centerTitle: true,
                                        title: Container(
                                            decoration:
                                                AppDecoration.fillBluegray1008c,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  AppbarImage(
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00),
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      margin: getMargin(
                                                          left: 33,
                                                          top: 21,
                                                          bottom: 16),
                                                      onTap: onTapArrowleft1),
                                                  AppbarTitle(
                                                      text:
                                                          "msg_delivery_inform"
                                                              .tr,
                                                      margin: getMargin(
                                                          left: 47,
                                                          top: 17,
                                                          right: 87,
                                                          bottom: 13))
                                                ])),
                                        styleType: Style.bgFillBluegray1008c),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 25, top: 10, right: 25),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          right: 10),
                                                      child: Text(
                                                          "lbl_payment_method"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsSemiBold12)),
                                                  Container(
                                                      margin: getMargin(top: 2),
                                                      decoration: AppDecoration
                                                          .fillBluegray103
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 21,
                                                                        bottom:
                                                                            16),
                                                                child: Text(
                                                                    "lbl_cash"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular12)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 17,
                                                                        right:
                                                                            13,
                                                                        bottom:
                                                                            17),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowrightBlack900,
                                                                    height:
                                                                        getVerticalSize(
                                                                            15.00),
                                                                    width: getHorizontalSize(
                                                                        10.00)))
                                                          ]))
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 10, right: 25),
                              child: Text("lbl_collect_payment".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12))),
                      Container(
                          margin: getMargin(left: 25, right: 25),
                          decoration: AppDecoration.fillBluegray103.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 19, top: 16, bottom: 21),
                                    child: Text("lbl_sender".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Padding(
                                    padding: getPadding(
                                        top: 18, right: 13, bottom: 16),
                                    child: CommonImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightBlack900,
                                        height: getVerticalSize(15.00),
                                        width: getHorizontalSize(10.00)))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 12, right: 25),
                              child: Text("msg_item_descriptio".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12))),
                      CustomTextFormField(
                          width: 309,
                          focusNode: FocusNode(),
                          controller: controller.groupFiveController,
                          hintText: "msg_ex_document_c".tr,
                          margin: getMargin(left: 25, top: 2, right: 25),
                          shape: TextFormFieldShape.RoundedBorder10,
                          fontStyle: TextFormFieldFontStyle.PoppinsSemiBold12),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 11, right: 25),
                              child: Text("lbl_notes_to_rider".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12))),
                      CustomTextFormField(
                          width: 309,
                          focusNode: FocusNode(),
                          controller: controller.groupSixController,
                          hintText: "lbl_ex_fragile".tr,
                          margin: getMargin(left: 25, top: 5, right: 25),
                          shape: TextFormFieldShape.RoundedBorder10,
                          fontStyle: TextFormFieldFontStyle.PoppinsSemiBold12),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 13, right: 25),
                              child: Text("lbl_promo_code".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12))),
                      CustomTextFormField(
                          width: 309,
                          focusNode: FocusNode(),
                          controller: controller.groupSevenController,
                          hintText: "msg_ex_christmas20".tr,
                          margin: getMargin(left: 25, top: 5, right: 25),
                          shape: TextFormFieldShape.RoundedBorder10,
                          fontStyle: TextFormFieldFontStyle.PoppinsSemiBold12,
                          textInputAction: TextInputAction.done),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(231.00),
                              margin: getMargin(left: 25, top: 11, right: 25),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_express_deliver2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: "msg_add_php_40_00".tr,
                                        style: TextStyle(
                                            color: ColorConstant.bluegray100,
                                            fontSize: getFontSize(9),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400))
                                  ]),
                                  textAlign: TextAlign.left))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(226.00),
                              margin: getMargin(left: 25, top: 13, right: 25),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_cash_on_deliver2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: "msg_add_php_40_002".tr,
                                        style: TextStyle(
                                            color: ColorConstant.bluegray100,
                                            fontSize: getFontSize(9),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400))
                                  ]),
                                  textAlign: TextAlign.left))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(top: 15),
                              decoration: AppDecoration.fillBluegray1004c,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 28, top: 16, right: 22),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_total".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold18)),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("lbl_php_47_0".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold18))
                                            ])),
                                    CustomButton(
                                        width: 310,
                                        text: "msg_confirm_informa".tr,
                                        margin: getMargin(
                                            left: 28,
                                            top: 18,
                                            right: 22,
                                            bottom: 5),
                                        onTap: onTapConfirminformation)
                                  ])))
                    ])))));
  }

  onTapArrowleft1() {
    Get.back();
  }

  onTapConfirminformation() {
    Get.toNamed(AppRoutes.mapInformationScreen);
  }
}
