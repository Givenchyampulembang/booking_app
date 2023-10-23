import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

import '../../../../widget/app_input_text.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
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
          ),
          16.0.height,
          AppInputText(
            label: 'Password',
          ),
          16.0.height,
          PrimaryButton(
            onPressed: () {},
            text: 'Login',
            width: double.infinity,
            type: PrimaryButtonType.type3,
          ),
        ],
      ),
    );
  }
}
