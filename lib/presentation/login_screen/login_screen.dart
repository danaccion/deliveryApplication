import 'controller/login_controller.dart';
import 'package:dhifflug/core/app_export.dart';
import 'package:dhifflug/core/utils/validation_functions.dart';
import 'package:dhifflug/widgets/custom_button.dart';
import 'package:dhifflug/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        right: 10,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgShape,
                        height: getVerticalSize(
                          126.00,
                        ),
                        width: getHorizontalSize(
                          199.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 54,
                        right: 24,
                      ),
                      child: Text(
                        "msg_welcome_onboard".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold18,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 27,
                        right: 24,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dol2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular13,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 27,
                        right: 24,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgUndrawdeliveri,
                        height: getVerticalSize(
                          146.00,
                        ),
                        width: getHorizontalSize(
                          204.00,
                        ),
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 309,
                    focusNode: FocusNode(),
                    controller: controller.frameOneController,
                    hintText: "lbl_email".tr,
                    margin: getMargin(
                      left: 24,
                      top: 18,
                      right: 24,
                    ),
                    variant: TextFormFieldVariant.FillBluegray100,
                    alignment: Alignment.center,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: 309,
                    focusNode: FocusNode(),
                    controller: controller.frameOneOneController,
                    hintText: "lbl_password".tr,
                    margin: getMargin(
                      left: 24,
                      top: 15,
                      right: 24,
                    ),
                    variant: TextFormFieldVariant.FillBluegray100,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: true,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: getMargin(
                        left: 25,
                        top: 22,
                        right: 25,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_already_have_an2".tr,
                              style: TextStyle(
                                color: ColorConstant.black900C6,
                                fontSize: getFontSize(
                                  13,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_sign_up".tr,
                              style: TextStyle(
                                color: ColorConstant.indigoA200,
                                fontSize: getFontSize(
                                  13,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 310,
                    text: "lbl_register".tr,
                    margin: getMargin(
                      left: 24,
                      top: 53,
                      right: 24,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: getMargin(
                        left: 24,
                        top: 13,
                        right: 24,
                        bottom: 5,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_already_have_an2".tr,
                              style: TextStyle(
                                color: ColorConstant.black900C6,
                                fontSize: getFontSize(
                                  13,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_sign_up".tr,
                              style: TextStyle(
                                color: ColorConstant.indigoA200,
                                fontSize: getFontSize(
                                  13,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
