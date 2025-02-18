import 'package:fruits_hub/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
    required this.name,
  });

}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
        activeImage: Assets.assetsImagesBoldHome,
        inActiveImage: Assets.assetsImagesOutlineHome,
        name: 'الرئيسية',
      ),
      BottomNavigationBarEntity(
        activeImage: Assets.assetsImagesBoldProduct,
        inActiveImage: Assets.assetsImagesOutlineProduct,
        name: 'المنتجات',
      ),
      BottomNavigationBarEntity(
        activeImage: Assets.assetsImagesBoldCart,
        inActiveImage: Assets.assetsImagesOutlineCart,
        name: 'سلة التسوق',
      ),
      BottomNavigationBarEntity(
        activeImage: Assets.assetsImagesBoldUser,
        inActiveImage: Assets.assetsImagesOutlineUser,
        name: 'حسابي',
      ),
];
