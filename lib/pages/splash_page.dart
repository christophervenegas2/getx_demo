import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home_controller.dart';
import 'package:getx_demo/controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      dispose: (_) {
        print("normal dispose");
      } ,
      init: SplashController(),
      builder: (_) => 
      Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        )
      )
    );
  }
}