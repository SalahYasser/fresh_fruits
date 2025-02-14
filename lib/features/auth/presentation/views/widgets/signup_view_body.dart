import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/have_an_account.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const CustomTextFormField(
              textInputType: TextInputType.name,
              hintText: 'الاسم كامل',
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'البريد الإلكتروني',
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'كلمة المرور',
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            const SizedBox(height: 16),
            const TermsAndConditions(),
            const SizedBox(height: 30),
            CustomButton(
              onPressed: () {},
              text: 'إنشاء حساب جديد',
            ),
            const SizedBox(height: 24),
            const HaveAnAccount()
          ],
        ),
      ),
    );
  }
}
