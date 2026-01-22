import 'package:get/get.dart';
import 'package:pacey_blacher/features/auth_view/view/login_view.dart';
import 'package:pacey_blacher/features/home_view/bindings/home_bindings.dart';
import 'package:pacey_blacher/features/home_view/view/home_view.dart';
import 'package:pacey_blacher/features/second_page_view/bindings/second_page_bindings.dart';
import 'package:pacey_blacher/features/second_page_view/view/second_page_view.dart';
import 'package:pacey_blacher/features/splash_view/bindings/splash_bindings.dart';
import 'package:pacey_blacher/features/splash_view/view/splash_view.dart';

class AppRoute {
  static const String splashView = '/splashView';
  static const String loginView = '/loginView';
  static const String homeView = '/homeView';
  static const String secondPageView = '/secondPageView';




  static String getSplashView() => splashView;
  static String getLoginView() => loginView;
  static String getHomeView() => homeView;
  static String getSecondPageView() => secondPageView;


  static List<GetPage> routes = [
    GetPage(name: splashView,page: () => SplashView(), binding: SplashBindings(),),
    GetPage(name: loginView,page: () => LoginView()),
    GetPage(name: homeView,page: () => HomeView(), binding: HomeBindings(),),
    GetPage(name: secondPageView,page: () => SecondPageView(), binding: SecondPageBindings(),),
  ];
}
