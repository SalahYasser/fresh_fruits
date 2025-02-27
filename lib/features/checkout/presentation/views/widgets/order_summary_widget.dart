import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/payment_item.dart';

import '../../../../../core/utils/app_text_styles.dart';

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'ملخص الطلب ',
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'المجموع الفرعي :',
                style: TextStyles.regular13.copyWith(
                  color: Color(0xFF4E5556),
                ),
              ),
              Spacer(),
              Text(
                '150 جنيه',
                textAlign: TextAlign.right,
                style: TextStyles.semiBold16,
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                'التوصيل  :',
                style: TextStyles.regular13.copyWith(
                  color: Color(0xFF4E5556),
                ),
              ),
              Spacer(),
              Text(
                '30جنية',
                textAlign: TextAlign.right,
                style: TextStyles.semiBold13.copyWith(
                  color: Color(0xFF4E5556),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(
            thickness: 1,
            color: Color(0xFFCACECE),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                'الكلي',
                style: TextStyles.bold16,
              ),
              Spacer(),
              Text(
                '180 جنيه',
                textAlign: TextAlign.right,
                style: TextStyles.bold16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
