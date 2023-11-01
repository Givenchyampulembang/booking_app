import 'package:bloc/bloc.dart';
import 'package:booking_app/config/router/app_router.gr.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

import 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsState().init());

  AppRouter get _appRouter => GetIt.I<AppRouter>();

  void handleBtnLogout() {
    Logger.root.info("handleBtnLogout");
    _appRouter.replace(const LoginRoute());
  }
}
