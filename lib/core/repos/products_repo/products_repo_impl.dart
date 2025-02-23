import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entities/add_product_input/product_entity.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/repos/products_repo/products_repo.dart';
import 'package:fruits_hub/core/services/database_service.dart';
import 'package:fruits_hub/core/utils/backend_endpoint.dart';

import '../../models/product_model.dart';

class ProductsRepoImpl extends ProductsRepo {
  final DataBaseService dataBaseService;

  ProductsRepoImpl(this.dataBaseService);

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() async {
    try {
      var date = await dataBaseService.getData(
        path: BackendEndpoint.getProducts,
        query: {
          'limit': 10,
          'orderBy': 'bestSelling',
          'descending': 'true',
        },

      ) as List<Map<String, dynamic>>;

      List<ProductEntity> products =
          date.map((e) => ProductModel.fromJson(e).toEntity()).toList();

      return right(products);
    } catch (e) {
      return left(ServerFailure('Failed to get products'));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var date = await dataBaseService.getData(
          path: BackendEndpoint.getProducts) as List<Map<String, dynamic>>;

      List<ProductEntity> products =
          date.map((e) => ProductModel.fromJson(e).toEntity()).toList();

      return right(products);
    } catch (e) {
      return left(ServerFailure('Failed to get products'));
    }
  }
}
