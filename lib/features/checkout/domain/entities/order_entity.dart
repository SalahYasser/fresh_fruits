import 'package:fruits_hub/features/checkout/domain/entities/shipping_address_entity.dart';

import '../../../home/domain/entities/cart_entity.dart';

class OrderEntity {
  final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAddressEntity? shippingAddressEntity = ShippingAddressEntity();

  OrderEntity(
    this.cartEntity, {
    this.payWithCash,
    this.shippingAddressEntity,
  });
}
