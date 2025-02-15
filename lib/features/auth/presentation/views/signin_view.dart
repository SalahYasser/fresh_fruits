import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/build_app_bar.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signin_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل الدخول'),
      body: const SigninViewBody(),
    );
  }
}
