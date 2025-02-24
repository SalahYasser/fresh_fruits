import 'package:flutter/material.dart';
import 'package:fruits_hub/core/entities/add_product_input/product_entity.dart';
import 'package:fruits_hub/core/widgets/fruit_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.products});

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 163 / 214,
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return FruitItem(
          productEntity: products[index],
        );
      },
    );
  }
}
