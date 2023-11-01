import 'package:bloc/bloc.dart';
import 'package:booking_app/config/router/app_router.gr.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

import 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeState().init());
  AppRouter get _appRouter => GetIt.I<AppRouter>();

  void handleBtnExplore() {
    Logger.root.info("handleBtnExplore");
    _appRouter.push(const DiscoverRoute());
  }

  void handleBtnLogin() {
    Logger.root.info("handleBtnLogin");
    _appRouter.replace(const LoginRoute());
  }
}
