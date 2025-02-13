import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.image,
  });

  final VoidCallback onPressed;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(width: 1, color: Color(0xFFDCDEDE)),
          ),
        ),
        child: ListTile(
          visualDensity: VisualDensity(
            vertical: VisualDensity.minimumDensity,
          ),
          leading: SvgPicture.asset(image),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold16.copyWith(
              color: Color(0xFF0C0D0D),
            ),
          ),
        ),
      ),
    );
  }
}
