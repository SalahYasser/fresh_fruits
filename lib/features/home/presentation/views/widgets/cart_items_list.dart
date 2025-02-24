import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_divider.dart';
import '../../../../../constants.dart';
import '../../../domain/entities/cart_item_entity.dart';
import 'cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key, required this.cartItems});

  final List<CartItemEntity> cartItems;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CartItem(
            cartItemEntity: cartItems[index],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return CustomDivider();
      },
    );
  }
}

