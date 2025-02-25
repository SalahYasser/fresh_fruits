import 'package:equatable/equatable.dart';
import 'package:fruits_hub/core/entities/add_product_input/product_entity.dart';

class CartItemEntity extends Equatable{
  final ProductEntity productEntity;
  int count;

  CartItemEntity({
    required this.productEntity,
    this.count = 0,
  });

  num calculateTotalPrice() {
    return productEntity.price * count;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * count;
  }

  countIncrement() {
    count++;
  }

  countDecrement() {
    count--;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [productEntity];
}
