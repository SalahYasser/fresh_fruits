import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
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
    );
  }
}