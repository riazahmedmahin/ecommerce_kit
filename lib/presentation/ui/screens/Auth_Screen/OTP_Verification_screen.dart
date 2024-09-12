import 'package:ecommerce_kit/presentation/ui/screens/Auth_Screen/Set_password.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 250),
            Text(
              'Enter OTP Code',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'A 4 Digit OTP Code has been sent',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 24,
            ),
            PinCodeTextField(
              length: 6,
              obscureText: true,
              obscuringCharacter: "*",
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                selectedColor: Colors.redAccent,
                activeColor: Colors.transparent,
                inactiveColor: Colors.transparent,
                selectedFillColor: Colors.redAccent,
                inactiveFillColor: Colors.grey.shade400,

              ),
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              onCompleted: (v) {
                print("Completed");
              },
              onChanged: (value) {
              },
              appContext: context,
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  //Get.offAll(()=>HomeScreen());
                  Get.offAll(NewPassword());
                },
                child: const Text(
                  'Send Code',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),

    );

  }
}
