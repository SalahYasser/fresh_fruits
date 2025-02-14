import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signup_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/have_an_account.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, password, name;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                textInputType: TextInputType.name,
                hintText: 'الاسم كامل',
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                textInputType: TextInputType.emailAddress,
                hintText: 'البريد الإلكتروني',
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  password = value!;
                },
                textInputType: TextInputType.visiblePassword,
                hintText: 'كلمة المرور',
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              const SizedBox(height: 16),
              const TermsAndConditions(),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context
                        .read<SignupCubit>()
                        .createUserWithEmailAndPassword(email, password, name);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'إنشاء حساب جديد',
              ),
              const SizedBox(height: 24),
              const HaveAnAccount()
            ],
          ),
        ),
      ),
    );
  }
}
