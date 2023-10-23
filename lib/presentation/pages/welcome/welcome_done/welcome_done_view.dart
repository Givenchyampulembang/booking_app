import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_done/component/welcome_image.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_done/component/welcome_title.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/welcome_button.dart';
import 'welcome_done_cubit.dart';

class WelcomeDonePage extends StatelessWidget {
  const WelcomeDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Welcome_doneCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<Welcome_doneCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.accentGreen,
      body: SingleChildScrollView(
        child: Column(
          children: [
            102.0.height,
            WelcomeDoneImage(),
            24.0.height,
            WelcomeDoneTitle(),
            24.0.height,
            WelcomeDoneButton(),
            95.0.height,
          ],
        ),
      ),
    );
  }
}
