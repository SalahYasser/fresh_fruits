import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'البريد الالكتروني',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'كلمة المرور',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ],
            ),
            SizedBox(
              height: 33,
            ),
            CustomButton(
              onPressed: () {},
              text: 'تسجيل دخول',
            ),
            SizedBox(
              height: 33,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'لا تمتلك حساب؟ ',
                    style: TextStyles.semiBold16.copyWith(
                      color: Color(0xFF949D9E),
                      height: 1.40,
                    ),
                  ),
                  TextSpan(
                    text: 'قم بإنشاء حساب',
                    style: TextStyles.semiBold16.copyWith(
                      color: Color(0xFF1B5E37),
                      height: 1.40,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 33,
            ),
          ],
        ),
      ),
    );
  }
}
