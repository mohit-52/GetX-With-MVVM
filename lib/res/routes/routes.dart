import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view/splash_view.dart';

class AppRoutes{

  static appRoutes() => [
    GetPage(name: RouteName.splashScreen,
        page: ()=> SplashScreen(),
    transition: Transition.cupertino,
    transitionDuration: Duration(seconds: 3)),


  ];

}