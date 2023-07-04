import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/getx_localisation/languages.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en' , 'US'),
      fallbackLocale: Locale('en' , 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteName.splashScreen,
      getPages: AppRoutes.appRoutes(),
    );
  }
}

