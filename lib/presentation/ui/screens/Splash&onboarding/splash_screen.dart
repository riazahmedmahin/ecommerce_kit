import 'package:ecommerce_kit/presentation/ui/screens/Auth_Screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

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
    await Future.delayed(
      const Duration(seconds: 2),
    );
    Get.offAll(const SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              Lottie.asset("assets/Animation - 1723477423646.json",
                  height: 150, width: 180, fit: BoxFit.fill),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.eco_rounded,
                    color: Colors.redAccent,
                    size: 46,
                  ),
                  const SizedBox(width: 6),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'L', // The "L" part
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: Colors.redAccent, // "L" in red color
                          ),
                        ),
                        TextSpan(
                          text: 'ifi.Com', // The rest of the text
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: Colors.black, // "ifi.Com" in black
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                'Version 1.1.0',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 190),
              Lottie.asset("assets/Animation - 1723478336477.json",
                  height: 90, width: 120),
            ],
          ),
        ),
      ),
    );
  }
}
