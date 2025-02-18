import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/best_selling_fruits/presentation/views/widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  static const routeName = 'best-selling';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BestSellingViewBody(),
    );
  }
}