import 'package:fruits_hub/features/checkout/domain/entities/shipping_address_entity.dart';

class ShippingAddressModel {
  String? name;
  String? email;
  String? address;
  String? city;
  String? phone;
  String? floor;

  ShippingAddressModel({
    this.name,
    this.email,
    this.address,
    this.city,
    this.phone,
    this.floor,
  });

  factory ShippingAddressModel.fromEntity(ShippingAddressEntity entity) {
    return ShippingAddressModel(
      name: entity.name,
      email: entity.email,
      address: entity.address,
      city: entity.city,
      phone: entity.phone,
      floor: entity.floor,
    );
  }

  @override
  String toString() {
    return '$address $floor $city';
  }

  toJson() {
    return {
      'name': name,
      'email': email,
      'address': address,
      'city': city,
      'phone': phone,
      'floor': floor,
    };
  }
}
