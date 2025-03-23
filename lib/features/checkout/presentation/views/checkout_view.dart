import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/get_user.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/features/checkout/presentation/manger/add_order_cubit/add_order_cubit.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/add_order_cubit_bloc_consumer.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:provider/provider.dart';
import '../../../../core/repos/orders_repo/orders_repo.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../../core/widgets/build_app_bar_widget.dart';
import '../../../home/domain/entities/cart_entity.dart';
import '../../domain/entities/shipping_address_entity.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key, required this.cartEntity});

  static const routeName = 'checkout';
  final CartEntity cartEntity;

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {

  late OrderInputEntity orderEntity;

  @override
  void initState() {
    super.initState();
    orderEntity = OrderInputEntity(
      uID: getUser().uId,
      widget.cartEntity,
      shippingAddressEntity: ShippingAddressEntity(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOrderCubit(
        getIt.get<OrdersRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBarWidget(
          context,
          title: 'الشحن',
          showNotification: false,
        ),
        body: Provider.value(
          value: orderEntity,
          child: const AddOrderCubitBlocConsumer(
            child: CheckoutViewBody(),
          ),
        ),
      ),
    );
  }
}