import 'controller/delivery_information_one_controller.dart';
import 'package:dan_s_application3/core/app_export.dart';
import 'package:dan_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:dan_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:dan_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class DeliveryInformationOneScreen
    extends GetWidget<DeliveryInformationOneController> {
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
                  child: Container(
                    height: getVerticalSize(
                      128.00,
                    ),
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getVerticalSize(
                              128.00,
                            ),
                            width: getHorizontalSize(
                              199.00,
                            ),
                            margin: getMargin(
                              right: 10,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imgShape,
                                    height: getVerticalSize(
                                      128.00,
                                    ),
                                    width: getHorizontalSize(
                                      199.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 36,
                                      top: 13,
                                      right: 36,
                                      bottom: 13,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 1,
                                            right: 10,
                                          ),
                                          child: Text(
                                            "lbl_place_orders".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular12,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 21,
                                          ),
                                          child: Text(
                                            "msg_schedule_for_de".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomAppBar(
                          height: getVerticalSize(
                            56.00,
                          ),
                          centerTitle: true,
                          title: Row(
                            children: [
                              AppbarSubtitle(
                                text: "lbl_delivery".tr,
                                margin: getMargin(
                                  top: 1,
                                ),
                              ),
                              AppbarSubtitle(
                                text: "lbl_cancelled".tr,
                                margin: getMargin(
                                  left: 55,
                                  bottom: 3,
                                ),
                              ),
                              AppbarSubtitle(
                                text: "lbl_completed".tr,
                                margin: getMargin(
                                  left: 42,
                                  top: 1,
                                ),
                              ),
                            ],
                          ),
                          styleType: Style.bgFillBluegray1008c,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 36,
                      top: 4,
                      right: 36,
                    ),
                    child: Text(
                      "msg_on_the_way_to_s".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 38,
                      top: 17,
                      right: 38,
                    ),
                    child: Text(
                      "lbl_item_picked_up".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 37,
                      top: 17,
                      right: 37,
                    ),
                    child: Text(
                      "msg_on_the_way_to_r".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 38,
                      top: 16,
                      right: 38,
                    ),
                    child: Text(
                      "lbl_item_delivered".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Location24X24:
        return getDefaultWidget();
      case BottomBarEnum.Notification:
        return getDefaultWidget();
      case BottomBarEnum.Menu:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
