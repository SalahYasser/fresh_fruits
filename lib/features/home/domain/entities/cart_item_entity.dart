import 'package:equatable/equatable.dart';
import 'package:fruits_hub/core/entities/add_product_input/product_entity.dart';

class CartItemEntity extends Equatable{
  final ProductEntity productEntity;
  int quantity;

  CartItemEntity({
    required this.productEntity,
    this.quantity = 0,
  });

  num calculateTotalPrice() {
    return productEntity.price * quantity;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * quantity;
  }

  quantityIncrement() {
    quantity++;
  }

  quantityDecrement() {
    quantity--;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [productEntity];
}
