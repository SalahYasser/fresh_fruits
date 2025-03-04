import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/payment_item.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../domain/entities/order_entity.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'عنوان التوصيل',
      child: Row(
        children: [
          Icon(Icons.location_on_outlined),
          Text(
            '${context.read<OrderEntity>().shippingAddressEntity}',
            textAlign: TextAlign.right,
            style: TextStyles.regular16.copyWith(
              color: Color(0xFF4E5556),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              pageController.animateToPage(
                1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
            child: Row(
              children: [
                Icon(Icons.edit_note),
                SizedBox(width: 4),
                Text(
                  'تعديل',
                  style: TextStyles.semiBold13.copyWith(
                    color: Color(0xFF949D9E),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
