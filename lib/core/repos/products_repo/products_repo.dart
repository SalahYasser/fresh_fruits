import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entities/add_product_input/product_entity.dart';
import 'package:fruits_hub/core/errors/failures.dart';

abstract class ProductsRepo {
  Future<Either<Failure, List<ProductEntity>>> getProducts();
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts();
}