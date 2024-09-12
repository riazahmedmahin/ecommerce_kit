import 'package:ecommerce_kit/presentation/ui/screens/Main_Bottom_Nav_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ConfrimPassword extends StatelessWidget {
  const ConfrimPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Lottie.asset(
                  "assets/Animation - 1723475718343.json",
                  height: 300,
                  width: 300,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 180,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(MainBottomNavScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text("Continue")),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
