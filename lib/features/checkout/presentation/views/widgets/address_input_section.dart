import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';

import '../../../domain/entities/order_entity.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.name = value!;
            },
            textInputType: TextInputType.text,
            hintText: 'الاسم كامل',
          ),
          SizedBox(height: 8),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.email = value!;
            },
            textInputType: TextInputType.emailAddress,
            hintText: 'البريد الإلكتروني',
          ),
          SizedBox(height: 8),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.address =
                  value!;
            },
            textInputType: TextInputType.text,
            hintText: 'العنوان',
          ),
          SizedBox(height: 8),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.city = value!;
            },
            textInputType: TextInputType.text,
            hintText: 'المدينه',
          ),
          SizedBox(height: 8),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.floor = value!;
            },
            textInputType: TextInputType.number,
            hintText: 'رقم الطابق , رقم الشقه ..',
          ),
          SizedBox(height: 8),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.phone = value!;
            },
            textInputType: TextInputType.number,
            hintText: 'رقم الطابق , رقم الشقه ..',
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
