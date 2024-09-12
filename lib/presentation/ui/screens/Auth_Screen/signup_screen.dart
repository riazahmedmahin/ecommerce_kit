import 'package:ecommerce_kit/presentation/ui/screens/Auth_Screen/Signin_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/Main_Bottom_Nav_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
              ),
              Text(
                'Create an account',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 25, color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
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
                            label: Icon(Icons.person), hintText: "Username"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: _obscureText,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            label: Icon(Icons.password), hintText: "Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(MainBottomNavScreen());
                            },
                            child: Text("Create account")
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text("Have an account ?"),
                  TextButton(
                      onPressed: () {
                        Get.to(() => SignInScreen());
                      },
                      child: Text("Login",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
