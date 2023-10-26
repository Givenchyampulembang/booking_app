import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/detail/component/detail_button.dart';
import 'package:booking_app/presentation/pages/detail/component/detail_image.dart';
import 'package:booking_app/presentation/pages/detail/component/detail_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'detail_cubit.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DetailCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DetailCubit>(context);

    return const Scaffold(
      backgroundColor: AppColor.ink06,
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailTitle(),
            DetailButton(),
            DetailImage(),
          ],
        ),
      ),
    );
  }
}
