import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/home/presentation/views/home_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {

    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());

    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
