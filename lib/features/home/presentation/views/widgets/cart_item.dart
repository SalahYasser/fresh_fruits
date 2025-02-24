import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_network_image.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 73,
            height: 92,
            decoration: BoxDecoration(color: Color(0xFFF3F5F7)),
            child: CustomNetworkImage(
                imageUrl:
                    'https://i5.walmartimages.com/seo/Fresh-Seedless-Watermelon-Each_e2ec527d-fe7b-4309-9373-186de34557cf.1c562d1a69a2a8f4cb7b5de8f125fc76.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF'),
          ),
          SizedBox(width: 17),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'بطيخ',
                      style: TextStyles.bold13,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.assetsImagesTrash),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
