import 'package:fruits_hub/core/models/review_model.dart';

import '../entities/add_product_input/product_entity.dart';
import '../helper_functions/get_avg_rating.dart';

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
  final num avgRating;
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
    required this.avgRating,
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
      reviews: json['reviews'] != null
          ? List<ReviewModel>.from(
              json['reviews'].map((e) => ReviewModel.fromJson(e)))
          : [],
      sellingCount: json['sellingCount'],
      avgRating: getAvgRating(json['reviews'] != null
          ? List<ReviewModel>.from(
              json['reviews'].map((e) => ReviewModel.fromJson(e)))
          : []),
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
