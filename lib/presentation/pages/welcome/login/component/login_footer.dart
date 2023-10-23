import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/config/theme/app_font.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Forgot password',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
              ),
              TextSpan(
                text: '  Get New',
                style: AppFont.paragraphSmallBold,
              ),
            ],
          ),
        ),
        8.0.height,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Do you have an account?',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
              ),
              TextSpan(
                text: ' Create New',
                style: AppFont.paragraphSmallBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
