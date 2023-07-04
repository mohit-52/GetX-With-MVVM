import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/fonts/app_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('email_hint'.tr, style: TextStyle(fontFamily: AppFonts.schylerRegular),),),
      body: Column(
        children: [
          Image(image: AssetImage(ImageAssets.splashScreen)),
          Image(image: AssetImage(ImageAssets.rocketIcon)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          throw InternetException("Found");
        },
      ),
    );
  }
}
