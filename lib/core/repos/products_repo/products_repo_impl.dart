import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entities/add_product_input/ProductEntity.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/repos/products_repo/products_repo.dart';
import 'package:fruits_hub/core/services/database_service.dart';

class ProductsRepoImpl extends ProductsRepo {

  final DataBaseService dataBaseService;

  ProductsRepoImpl(this.dataBaseService);

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() {
    // TODO: implement getBestSellingProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

}