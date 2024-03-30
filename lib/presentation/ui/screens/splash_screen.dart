import 'package:ecommerce_kit/presentation/ui/screens/Main_Bottom_Nav_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }

  void moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 1),);
      Get.offAll(const MainBottomNavScreen());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300,),
            Icon(Icons.eco_rounded,color: Colors.redAccent,size: 250,),
            Text(
              'Lifi.com',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 28,
                fontWeight: FontWeight.w900),
            ),
            Text(
              'Version 1.1.0',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: 200,),
            CircularProgressIndicator()
            
          ],
        ),
      ),
    );
  }
}
