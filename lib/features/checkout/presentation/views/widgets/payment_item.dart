import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_decoration.dart';

import '../../../../../core/utils/app_text_styles.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title :',
          style: TextStyles.bold13,
        ),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 16),
          decoration: AppDecoration.greyBoxDecoration,
          child: child,
        ),
      ],
    );
  }
}
