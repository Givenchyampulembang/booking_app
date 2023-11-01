import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/discover/settings/settings_cubit.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<SettingsCubit>(context);
    return Padding(
        padding: EdgeInsets.all(AppDimen.w16),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Expanded(
            child: PrimaryButton(
              onPressed: cubit.handleBtnLogout,
              text: 'Logout',
            ),
          )
        ]));
  }
}
