import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_divider.dart';
import '../../../../../constants.dart';
import 'cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: const CartItem(),
        );
      },
      separatorBuilder: (context, index) {
        return CustomDivider();
      },
    );
  }
}

