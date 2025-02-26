import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

import '../../../../../core/utils/app_text_styles.dart';
import 'active_shipping_item_dot.dart';
import 'in_active_shipping_item_dot.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isActive,
    required this.onTap,
  });

  final String title, subtitle, price;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: const EdgeInsets.only(
          top: 16,
          left: 13,
          right: 28,
          bottom: 16,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0x33D9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              width: 1,
              color: isActive ? AppColors.primaryColor : Colors.transparent,
            ),
          ),
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isActive
                  ? const ActiveShippingItemDot()
                  : const InActiveShippingItemDot(),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyles.semiBold13,
                  ),
                  SizedBox(height: 6),
                  Text(
                    subtitle,
                    textAlign: TextAlign.right,
                    style: TextStyles.regular13.copyWith(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Center(
                child: Text(
                  '$price جنيه',
                  style: TextStyles.bold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
