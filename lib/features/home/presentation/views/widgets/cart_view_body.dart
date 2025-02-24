import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/build_app_bar_widget.dart';
import 'cart_header.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: kTopPadding),
                buildAppBar(
                  context,
                  title: 'السلة',
                  showNotification: false,
                ),
                SizedBox(height: kTopPadding),
                CartHeader(),
                SizedBox(height: 8),
              ],
            ),
          ),
          // ProductsGridViewBlocBuilder(),
        ],
      ),
    );
  }
}
