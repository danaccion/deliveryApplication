import 'controller/registration_controller.dart';
import 'package:dan_s_application3/core/app_export.dart';
import 'package:dan_s_application3/core/utils/validation_functions.dart';
import 'package:dan_s_application3/widgets/custom_button.dart';
import 'package:dan_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends GetWidget<RegistrationController> {
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
                        left: 20,
                        top: 54,
                        right: 20,
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
                        left: 20,
                        top: 27,
                        right: 20,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dol2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular13,
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 309,
                    focusNode: FocusNode(),
                    controller: controller.frameOneController,
                    hintText: "lbl_full_name".tr,
                    margin: getMargin(
                      left: 20,
                      top: 49,
                      right: 20,
                    ),
                    variant: TextFormFieldVariant.FillBluegray100,
                    alignment: Alignment.center,
                    validator: (value) {
                      if (!isText(value)) {
                        return "Please enter valid text";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: 309,
                    focusNode: FocusNode(),
                    controller: controller.frameOneOneController,
                    hintText: "lbl_email".tr,
                    margin: getMargin(
                      left: 20,
                      top: 20,
                      right: 20,
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
                    controller: controller.frameOneTwoController,
                    hintText: "lbl_password".tr,
                    margin: getMargin(
                      left: 20,
                      top: 20,
                      right: 20,
                    ),
                    variant: TextFormFieldVariant.FillBluegray100,
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
                  CustomTextFormField(
                    width: 309,
                    focusNode: FocusNode(),
                    controller: controller.frameOneThreeController,
                    hintText: "msg_confirm_passwor".tr,
                    margin: getMargin(
                      left: 20,
                      top: 20,
                      right: 20,
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
                  CustomButton(
                    width: 310,
                    text: "lbl_register".tr,
                    margin: getMargin(
                      left: 20,
                      top: 88,
                      right: 20,
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
                              text: "lbl_sign_in".tr,
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
