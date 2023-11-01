import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/presentation/pages/discover/settings/component/setting_button.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'settings_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SettingsCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<SettingsCubit>(context);

    return Scaffold(
        backgroundColor: AppColor.ink05,
        body: Column(children: [
          70.0.height,
          SettingButton(),
        ]));
  }
}
