import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:svg_flutter/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(image: Assets.assetsImagesBoldHome)
        : InActiveItem(image: Assets.assetsImagesOutlineHome);
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}
