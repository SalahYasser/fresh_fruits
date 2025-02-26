import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/build_app_bar.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  static const routeName = 'checkout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context, title: 'الشحن'),
      body: const CheckoutViewBody(),
    );
  }
}
