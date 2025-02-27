import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';

import '../../../../../constants.dart';
import 'checkout_steps.dart';
import 'checkout_steps_page_view.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndexPage = pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  dispose() {
    pageController.dispose();
    super.dispose();
  }

  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 20),
          CheckoutSteps(
            pageController: pageController,
            currentIndexPage: currentIndexPage,
          ),
          Expanded(
            child: CheckoutStepsPageView(pageController: pageController),
          ),
          CustomButton(
            text: getNextButtonText(),
            onPressed: () {
              pageController.animateToPage(
                currentIndexPage + 1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }

  String getNextButtonText() {
    switch (currentIndexPage) {
      case 0:
        return 'التالي';
      case 1:
        return 'التالي';
      case 2:
        return 'الدفع عبر PayPal';
      default:
        return 'التالي';
    }
  }
}
