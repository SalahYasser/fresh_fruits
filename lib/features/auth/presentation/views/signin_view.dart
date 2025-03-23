import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/build_app_bar_widget.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/singin_cubit/singin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(
        getIt.get<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBarWidget(
          context,
          title: 'تسجيل الدخول',
          showBackButton: false,
          showNotification: false,
        ),
        body: const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}