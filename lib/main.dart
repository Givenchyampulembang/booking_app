import 'package:booking_app/config/router/app_router.gr.dart';
import 'package:booking_app/config/router/middleware/auth_guard.dart';
import 'package:booking_app/config/router/middleware/first_install_guard.dart';
import 'package:booking_app/utils/helper/pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefHelper.instance.init();
  GetIt.I.registerSingleton<AppRouter>(AppRouter(
    firstInstallGuard: FirstInstallGuard(),
    authGuard: AuthGuard(),
  ));

  Logger.root.level = Level.OFF;
  Logger.root.onRecord.listen((record) {
    // debugPrint(record.message);
  });
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final router = GetIt.I<AppRouter>();
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Booking App',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                fontFamily: 'Poppins'),
            routerDelegate: router.delegate(),
            routeInformationParser: router.defaultRouteParser(),
          );
        });
  }
}
