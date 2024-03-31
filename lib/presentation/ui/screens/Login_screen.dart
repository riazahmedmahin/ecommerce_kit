import 'package:ecommerce_kit/presentation/ui/screens/ForgotPasswordScreen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/signup_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
              'Log In',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 28, color: Colors.grey.shade700),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        label: Icon(Icons.email),
                        hintText: "Email",

                        //hintText: "Email"
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Icon(Icons.password), hintText: "Password"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 140,
                              ),
                              Center(child: Text("Login")),
                              SizedBox(
                                width: 140,
                              ),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      Get.to(() => ForgotPasswordScreen());
                    },
                    child: Text("Forgot Password?")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("don't have an account?"),
                    TextButton(
                        onPressed: () {
                          Get.to(() => SignUpScreen());
                        },
                        child: Text("Create an new account"))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
