import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 30,
          ),
        ),
        SizedBox(width: 18),
        Text(
          'أو',
          textAlign: TextAlign.center,
          style: TextStyles.semiBold16.copyWith(
            color: Color(0xFF0C0D0D),
            height: 1.40
          ),
        ),
        SizedBox(width: 18),
        Expanded(
          child: Divider(
            height: 30,
          ),
        ),

      ],
    );
  }
}
