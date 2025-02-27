import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/step_item.dart';

import '../../../../../core/helper_functions/build_error_bar.dart';
import '../../../domain/entities/order_entity.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({
    super.key,
    required this.currentIndexPage,
    required this.pageController,
  });

  final int currentIndexPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        getSteps().length,
        (index) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (context.read<OrderEntity>().payWithCash != null) {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                } else {
                  buildBar(context, 'قم بتحديد طريقة الدفع');
                }
              },
              child: StepItem(
                isActive: index <= currentIndexPage,
                text: getSteps()[index],
                index: (index + 1).toString(),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<String> getSteps() {
  return [
    'الشحن',
    'العنوان',
    'الدفع',
  ];
}
