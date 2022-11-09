import '../controller/vehicle_controller.dart';
import '../models/vehicle_screen_item_model.dart';
import 'package:dhifflug/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VehicleScreenItemWidget extends StatelessWidget {
  VehicleScreenItemWidget(this.vehicleScreenItemModelObj);

  VehicleScreenItemModel vehicleScreenItemModelObj;

  var controller = Get.find<VehicleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        99.00,
      ),
      width: getHorizontalSize(
        310.00,
      ),
      margin: getMargin(
        top: 9.325001,
        bottom: 9.325001,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: AppDecoration.outlineBlack9003f.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        93.00,
                      ),
                      width: getHorizontalSize(
                        147.00,
                      ),
                      margin: getMargin(
                        left: 2,
                        top: 2,
                        right: 160,
                        bottom: 2,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.orange100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            10.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: getHorizontalSize(
                91.00,
              ),
              margin: getMargin(
                left: 62,
                top: 12,
                right: 62,
                bottom: 12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 10,
                    ),
                    child: Text(
                      "lbl_motorcycle".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium13,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 1,
                        right: 1,
                      ),
                      child: Text(
                        "msg_perfect_for_sma".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular8,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 2,
                        top: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMail,
                              height: getSize(
                                9.00,
                              ),
                              width: getSize(
                                9.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "msg_0_5_x_0_5_x_0_4".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 2,
                      top: 1,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 3,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgBag,
                            height: getSize(
                              9.00,
                            ),
                            width: getSize(
                              9.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 2,
                            top: 3,
                          ),
                          child: Text(
                            "lbl_up_to_20_kg".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
