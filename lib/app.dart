import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/core/bindings/controller_binder.dart';
import 'package:pacey_blacher/core/utils/theme/theme.dart';
import 'package:pacey_blacher/routes/app_routes.dart';

class ScubeTech extends StatelessWidget {
  const ScubeTech({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'GetX Learning',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoute.splashView,
          getPages: AppRoute.routes,
          initialBinding: ControllerBinder(),
          themeMode: ThemeMode.system,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
        );
      },
    );
  }
}
