import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';

import '../../../domain/entities/order_entity.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection(
      {super.key, required this.formKey, required this.valueListenable});

  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: valueListenable,
        builder: (context, value, child) => Form(
          key: formKey,
          autovalidateMode: value,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAddressEntity.name =
                      value!;
                },
                textInputType: TextInputType.text,
                hintText: 'الاسم كامل',
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAddressEntity.email =
                      value!;
                },
                textInputType: TextInputType.text,
                hintText: 'البريد الإلكتروني',
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAddressEntity.address =
                      value!;
                },
                textInputType: TextInputType.text,
                hintText: 'العنوان',
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAddressEntity.city =
                      value!;
                },
                textInputType: TextInputType.text,
                hintText: 'المدينه',
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAddressEntity.floor =
                      value!;
                },
                textInputType: TextInputType.text,
                hintText: 'رقم الطابق , رقم الشقه ..',
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAddressEntity.phone =
                      value!;
                },
                textInputType: TextInputType.number,
                hintText: 'رقم الهاتف',
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
