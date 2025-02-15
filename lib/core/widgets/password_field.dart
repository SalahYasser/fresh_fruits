import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved});

  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: (value) {},
      textInputType: TextInputType.visiblePassword,
      hintText: 'كلمة المرور',
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText ? const Icon(Icons.visibility_off) : const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
