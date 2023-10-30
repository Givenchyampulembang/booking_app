import 'package:booking_app/presentation/pages/welcome/welcome_cubit.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/app_dimen.dart';
import '../../../widget/primary_button.dart';
import '../../../widget/secondary_button.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.watch<WelcomeCubit>();
    return Padding(
      padding: EdgeInsets.all(AppDimen.w16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: PrimaryButton(
              onPressed: cubit.handleBtnExplore,
              text: 'Explore',
            ),
          ),
          16.0.width,
          Expanded(
            child: SecondaryButton(
              onPressed: cubit.handleBtnLogin,
              text: 'Login',
            ),
          ),
        ],
      ),
    );
  }
}
