import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(12, 0),
      child: Row(
        children: [
          Checkbox(
            value: false, // Current state of the checkbox
            onChanged: (value) {},
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width -
                (kHorizontalPadding * 2) -
                48,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(0xFF949D9E),
                    ),
                  ),
                  TextSpan(
                    text: 'الشروط والأحكام',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyles.semiBold13
                  ),
                  TextSpan(
                    text: 'الخاصة بنا',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(0xFF949D9E),
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
