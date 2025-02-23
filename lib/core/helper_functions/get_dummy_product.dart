import 'package:fruits_hub/core/entities/add_product_input/ProductEntity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'Apple',
    code: 'APL',
    description: 'The apple is a sweet, edible fruit produced by an apple tree (Malus domestica).',
    price: 10,
    isFeatured: true,
    expirationMonths: 12,
    numOfCalories: 100,
    unitAmount: 1,
    isOrganic: true,
    imageUrl: null,
    reviews: [],
  );
}

List<ProductEntity> getDummyProducts() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}