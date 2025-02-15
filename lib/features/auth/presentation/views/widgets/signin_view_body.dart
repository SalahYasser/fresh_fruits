import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/social_login_button.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const CustomTextFormField(
                textInputType: TextInputType.emailAddress,
                hintText: 'البريد الالكتروني',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                textInputType: TextInputType.emailAddress,
                hintText: 'كلمة المرور',
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffC9CECF),
                ),
              ),
              const SizedBox(
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
              const SizedBox(
                height: 33,
              ),
              CustomButton(
                onPressed: () {},
                text: 'تسجيل دخول',
              ),
              const SizedBox(
                height: 33,
              ),
              const DontHaveAccount(),
              const SizedBox(
                height: 33,
              ),
              const OrDivider(),
              const SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {},
                title: 'تسجيل بواسطة جوجل',
                image: Assets.assetsImagesGoogleIcon,
              ),
              const SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {},
                title: 'تسجيل بواسطة أبل',
                image: Assets.assetsImagesAppleLogo,
              ),
              const SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {},
                title: 'تسجيل بواسطة فيسبوك',
                image: Assets.assetsImagesFacebookLogo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
