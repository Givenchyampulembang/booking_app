import 'package:booking_app/config/networking/api_client.dart';
import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/presentation/pages/discover/component/button_menu.dart';
import 'package:booking_app/presentation/pages/discover/discover_state.dart';
import 'package:booking_app/presentation/pages/discover/favorite/favorite_view.dart';
import 'package:booking_app/presentation/pages/discover/settings/settings_view.dart';
import 'package:booking_app/presentation/pages/discover/trips/trips_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'discover_cubit.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiClient apiClient = ApiClient();
    apiClient.get(Uri.parse(
        'https://4be8a8d2-9fb7-47f7-8994-aade941d3665.mock.pstmn.io/api/v1/trips'));
    return BlocProvider(
      create: (BuildContext context) => DiscoverCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);
    return Scaffold(
      backgroundColor: AppColor.ink05,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<DiscoverCubit, DiscoverState>(
              builder: (context, state) {
                return state.selectedIndex == 0
                    ? const TripsPage()
                    : state.selectedIndex == 1
                        ? const FavoritePage()
                        : const SettingsPage();
              },
            ),
          ),
          BlocBuilder<DiscoverCubit, DiscoverState>(
            builder: (context, state) {
              return ButtonMenu(cubit: cubit);
            },
          ),
        ],
      ),
    );
  }
}
