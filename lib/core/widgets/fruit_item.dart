import 'package:flutter/material.dart';
import 'package:fruits_hub/core/entities/add_product_input/ProductEntity.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_network_image.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntity});

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                productEntity.imageUrl != null
                    ? Flexible(
                        child: CustomNetworkImage(
                          imageUrl: productEntity.imageUrl!,
                        ),
                      )
                    : Container(
                        width: 100,
                        height: 100,
                        color: Colors.grey,
                      ),
                SizedBox(
                  height: 24,
                ),
                ListTile(
                  title: Text(
                    productEntity.name,
                    textAlign: TextAlign.right,
                    style: TextStyles.semiBold13,
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${productEntity.price} جنية ',
                          style: TextStyles.bold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyles.bold13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: ' الكيلو',
                          style: TextStyles.bold13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.right,
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
