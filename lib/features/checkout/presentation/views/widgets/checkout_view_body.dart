import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'checkout_steps.dart';
import 'in_active_step_item.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          CheckoutSteps(),
        ],
      ),
    );
  }
}
