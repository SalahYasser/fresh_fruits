import 'package:bloc/bloc.dart';
import 'package:fruits_hub/core/entities/add_product_input/product_entity.dart';
import 'package:fruits_hub/features/home/domain/entities/cart_entity.dart';
import 'package:fruits_hub/features/home/domain/entities/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity = CartEntity(cartItems: []);

  void addProduct(ProductEntity productEntity) {

    bool isProductExists = cartEntity.isExists(productEntity);

    if (isProductExists) {

    } else {
      CartItemEntity cartItemEntity = CartItemEntity(
        productEntity: productEntity,
        count: 1,
      );
    cartEntity.addCartItem(cartItemEntity);
    }

    emit(CartItemAdded());
  }
}
