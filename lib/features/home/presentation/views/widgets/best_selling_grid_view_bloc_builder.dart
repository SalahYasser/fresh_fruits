import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruits_hub/core/helper_functions/get_dummy_product.dart';
import 'package:fruits_hub/core/widgets/custom_error_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'best_selling_grid_view.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {

        if (state is ProductsSuccess) {
          return BestSellingGridView(
            products: state.products,
          );
        }
        if (state is ProductsFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(text: state.errMessage),
          );
        } else {
          return Skeletonizer.sliver(
            child: BestSellingGridView(
              products: getDummyProducts(),
            ),
          );
        }
      },
    );
  }
}
