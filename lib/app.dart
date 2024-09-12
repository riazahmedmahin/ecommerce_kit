import 'package:ecommerce_kit/controller.dart';
import 'package:ecommerce_kit/presentation/ui/screens/Splash&onboarding/splash_screen.dart';
import 'package:ecommerce_kit/presentation/utility/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class EcommerceAppUI extends StatelessWidget {
  const EcommerceAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightThemeData,
      home: SplashScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}
