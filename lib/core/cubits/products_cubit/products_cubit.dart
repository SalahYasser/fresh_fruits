import 'package:bloc/bloc.dart';
import 'package:fruits_hub/core/repos/products_repo/products_repo.dart';
import 'package:meta/meta.dart';

import '../../entities/add_product_input/product_entity.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());

  final ProductsRepo productsRepo;

  Future<void> getProducts() async {

    emit(ProductsLoading());

    var result = await productsRepo.getProducts();
    result.fold(
      (failure) => emit(ProductsFailure(failure.message)),
      (products) => emit(
        ProductsSuccess(products),
      ),
    );
  }

  Future<void> getBestSellingProducts() async {

    emit(ProductsLoading());

    var result = await productsRepo.getBestSellingProducts();
    result.fold(
      (failure) => emit(ProductsFailure(failure.message)),
      (products) => emit(
        ProductsSuccess(products),
      ),
    );
  }
}
