import 'package:fruits_hub/core/models/review_model.dart';

import '../entities/add_product_input/ProductEntity.dart';

class ProductModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numOfCalories;
  final int unitAmount;
  final num sellingCount;
  final num avgRating = 0;
  final num ratingCount = 0;
  final List<ReviewModel> reviews;

  ProductModel({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.isFeatured,
    required this.expirationMonths,
    required this.numOfCalories,
    required this.unitAmount,
    required this.sellingCount,
    this.isOrganic = false,
    this.imageUrl,
    required this.reviews,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      code: json['code'],
      description: json['description'],
      price: json['price'],
      isFeatured: json['isFeatured'],
      expirationMonths: json['expirationMonths'],
      numOfCalories: json['numOfCalories'],
      unitAmount: json['unitAmount'],
      isOrganic: json['isOrganic'],
      imageUrl: json['imageUrl'],
      reviews: json['reviews'].map((e) => ReviewModel.fromJson(e)).toList(),
      sellingCount: json['sellingCount'],
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      code: code,
      description: description,
      price: price,
      isFeatured: isFeatured,
      expirationMonths: expirationMonths,
      numOfCalories: numOfCalories,
      unitAmount: unitAmount,
      isOrganic: isOrganic,
      imageUrl: imageUrl,
      reviews: reviews.map((e) => e.toEntity()).toList(),
    );
  }

  toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationMonths': expirationMonths,
      'numOfCalories': numOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrganic,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }
}
