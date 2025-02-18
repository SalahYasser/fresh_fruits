import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/featured_button.dart';
import 'package:svg_flutter/svg.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {

    var widthItem = MediaQuery.sizeOf(context).width;

    return SizedBox(
      width: widthItem,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            SvgPicture.asset(Assets.assetsImagesPageViewItem2Image),
            Container(
              width: widthItem / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: svg.Svg(Assets.assetsImagesFeaturedItem),
                  fit: BoxFit.fill,
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text(
                      'عروض العيد',
                      style: TextStyles.regular13.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'خصم 25%',
                      style: TextStyles.bold19.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 11),
                    FeaturedButton(
                      text: 'تسوق الان',
                      onPressed: () {},
                    ),
                    SizedBox(height: 29),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
