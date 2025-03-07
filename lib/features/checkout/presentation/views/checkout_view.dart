// import 'package:flutter/material.dart';
// import 'package:fruits_hub/core/helper_functions/get_user.dart';
// import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
// import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_view_body.dart';
// import 'package:provider/provider.dart';
// import '../../../../core/widgets/build_app_bar_widget.dart';
// import '../../../home/domain/entities/cart_entity.dart';
// import '../../domain/entities/shipping_address_entity.dart';
//
// class CheckoutView extends StatelessWidget {
//   const CheckoutView({super.key, required this.cartEntity});
//
//   static const routeName = 'checkout';
//   final CartEntity cartEntity;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBarWidget(
//         context,
//         title: 'الشحن',
//         showNotification: false,
//       ),
//       body: Provider.value(
//         value: OrderEntity(
//           uID: getUser()!.uId,
//           cartEntity,
//           shippingAddressEntity: ShippingAddressEntity(),
//         ),
//         child: const CheckoutViewBody(),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/get_user.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:provider/provider.dart';
import '../../../../core/widgets/build_app_bar_widget.dart';
import '../../../home/domain/entities/cart_entity.dart';
import '../../domain/entities/shipping_address_entity.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});

  static const routeName = 'checkout';
  final CartEntity cartEntity;

  @override
  Widget build(BuildContext context) {
    final user = getUser(); // Retrieve the user

    // Check if user is null
    if (user == null) {
      return Scaffold(
        appBar: buildAppBarWidget(
          context,
          title: 'الشحن',
          showNotification: false,
        ),
        body: Center(
          child: Text('No user data found. Please log in.'),
        ),
      );
    }

    // Proceed to create the OrderEntity if user is not null
    return Scaffold(
      appBar: buildAppBarWidget(
        context,
        title: 'الشحن',
        showNotification: false,
      ),
      body: Provider.value(
        value: OrderEntity(
          uID: user.uId, // Safely access uId
          cartEntity,
          shippingAddressEntity: ShippingAddressEntity(),
        ),
        child: const CheckoutViewBody(),
      ),
    );
  }
}