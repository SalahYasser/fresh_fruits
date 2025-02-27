import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextFormField(
            textInputType: TextInputType.text,
            hintText: 'الاسم كامل',
          ),
          SizedBox(height: 8),
          CustomTextFormField(
            textInputType: TextInputType.emailAddress,
            hintText: 'البريد الإلكتروني',
          ),
          SizedBox(height: 8),
          CustomTextFormField(
            textInputType: TextInputType.text,
            hintText: 'العنوان',
          ),
          SizedBox(height: 8),
          CustomTextFormField(
            textInputType: TextInputType.text,
            hintText: 'المدينه',
          ),
          SizedBox(height: 8),
          CustomTextFormField(
            textInputType: TextInputType.number,
            hintText: 'رقم الطابق , رقم الشقه ..',
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
