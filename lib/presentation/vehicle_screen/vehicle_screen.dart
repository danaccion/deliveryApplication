import '../vehicle_screen/widgets/vehicle_screen_item_widget.dart';
import 'controller/vehicle_controller.dart';
import 'models/vehicle_screen_item_model.dart';
import 'package:dan_s_application3/core/app_export.dart';
import 'package:dan_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:dan_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:dan_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:dan_s_application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class VehicleScreen extends GetWidget<VehicleController> {
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(164.00),
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
                                                    CrossAxisAlignment.center,
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
                                                      onTap: onTapArrowleft),
                                                  AppbarTitle(
                                                      text: "lbl_vehicle".tr,
                                                      margin: getMargin(
                                                          left: 106,
                                                          top: 16,
                                                          right: 145,
                                                          bottom: 14))
                                                ])),
                                        styleType: Style.bgFillBluegray1008c),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(99.00),
                                            width: getHorizontalSize(310.00),
                                            margin: getMargin(
                                                left: 25, top: 10, right: 25),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .outlineBlack9003f
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            93.00),
                                                                        width: getHorizontalSize(
                                                                            147.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                2,
                                                                            top:
                                                                                2,
                                                                            right:
                                                                                160,
                                                                            bottom:
                                                                                2),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.orange100,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(10.00)))))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  91.00),
                                                          margin: getMargin(
                                                              left: 62,
                                                              top: 12,
                                                              right: 62,
                                                              bottom: 12),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_motorcycle"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium13)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                1,
                                                                            right:
                                                                                1),
                                                                        child: Text(
                                                                            "msg_perfect_for_sma"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular8))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 2, top: 3),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                          Padding(
                                                                              padding: getPadding(bottom: 1),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgMail, height: getSize(9.00), width: getSize(9.00))),
                                                                          Padding(
                                                                              padding: getPadding(top: 1),
                                                                              child: Text("msg_0_5_x_0_5_x_0_4".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular8))
                                                                        ]))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 2,
                                                                        top: 1,
                                                                        right:
                                                                            10),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(bottom: 3),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgBag, height: getSize(9.00), width: getSize(9.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 2, top: 3),
                                                                              child: Text("lbl_up_to_20_kg".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular8))
                                                                        ]))
                                                              ])))
                                                ])))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 25, top: 18, right: 25),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.vehicleModelObj.value
                                  .vehicleScreenItemList.length,
                              itemBuilder: (context, index) {
                                VehicleScreenItemModel model = controller
                                    .vehicleModelObj
                                    .value
                                    .vehicleScreenItemList[index];
                                return VehicleScreenItemWidget(model);
                              }))),
                      CustomButton(
                          width: 310,
                          text: "lbl_select_vehicle".tr,
                          margin: getMargin(
                              left: 25, top: 19, right: 22, bottom: 5))
                    ])))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
