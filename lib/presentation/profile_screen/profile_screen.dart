import 'controller/profile_controller.dart';
import 'package:dhifflug/core/app_export.dart';
import 'package:dhifflug/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends GetWidget<ProfileController> {
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(230.00),
                              width: size.width,
                              decoration: AppDecoration.fillBluegray10051,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                right: 10, bottom: 10),
                                            child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgShapeGray400,
                                                height: getVerticalSize(126.00),
                                                width: getHorizontalSize(
                                                    199.00)))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 99,
                                                top: 21,
                                                right: 99,
                                                bottom: 21),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 31, right: 30),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      50.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse1,
                                                              height: getSize(
                                                                  100.00),
                                                              width: getSize(
                                                                  100.00),
                                                              fit: BoxFit
                                                                  .cover))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 12),
                                                          child: Text(
                                                              "msg_avatar_d_sampl"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsBold18Black9008e)))
                                                ])))
                                  ]))),
                      Container(
                          margin: getMargin(left: 25, top: 51, right: 25),
                          decoration: AppDecoration.fillBluegray103.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 11, bottom: 15),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgLocation,
                                              height: getSize(24.00),
                                              width: getSize(24.00)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 13, top: 8, bottom: 1),
                                              child: Text("lbl_privacy".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        top: 19, right: 17, bottom: 19),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(12.00),
                                        width: getHorizontalSize(6.00)))
                              ])),
                      Container(
                          margin: getMargin(left: 25, top: 13, right: 25),
                          decoration: AppDecoration.fillBluegray103.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapRowclock();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 19, top: 16, bottom: 15),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgClock,
                                                  height: getSize(19.00),
                                                  width: getSize(19.00)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 3,
                                                      bottom: 1),
                                                  child: Text(
                                                      "msg_purchase_hist".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular14))
                                            ]))),
                                Padding(
                                    padding: getPadding(
                                        top: 18, right: 17, bottom: 20),
                                    child: InkWell(
                                        onTap: () {
                                          onTapImgArrowrightOne();
                                        },
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(6.00))))
                              ])),
                      CustomTextFormField(
                          width: 309,
                          focusNode: FocusNode(),
                          controller: controller.languageController,
                          hintText: "lbl_help_support".tr,
                          margin: getMargin(left: 25, top: 13, right: 25),
                          shape: TextFormFieldShape.CircleBorder25,
                          padding: TextFormFieldPadding.PaddingAll13,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsRegular14Black900,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 14, right: 13, bottom: 12),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgQuestion)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(24.00),
                              minHeight: getSize(24.00))),
                      CustomTextFormField(
                          width: 309,
                          focusNode: FocusNode(),
                          controller: controller.logoutController,
                          hintText: "lbl_logout".tr,
                          margin: getMargin(
                              left: 25, top: 15, right: 25, bottom: 5),
                          shape: TextFormFieldShape.CircleBorder25,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsRegular14Black900,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 13, right: 15, bottom: 13),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgMaximize)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(24.00),
                              minHeight: getSize(24.00)))
                    ])))));
  }

  onTapRowclock() {
    Get.toNamed(AppRoutes.deliveryInformationScreen);
  }

  onTapImgArrowrightOne() {
    Get.toNamed(AppRoutes.vehicleScreen);
  }
}
