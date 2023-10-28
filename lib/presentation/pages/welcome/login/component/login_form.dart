import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/welcome/login/login_cubit.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widget/app_input_text.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.w24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Login', style: AppFont.h3),
          16.0.height,
          AppInputText(
            label: 'Email',
            controller: cubit.state.emailController,
          ),
          16.0.height,
          AppInputText(
            label: 'Password',
            controller: cubit.state.passwordController,
          ),
          16.0.height,
          PrimaryButton(
            onPressed: cubit.login,
            text: 'Login',
            width: double.infinity,
            type: PrimaryButtonType.type3,
          ),
        ],
      ),
    );
  }
}
