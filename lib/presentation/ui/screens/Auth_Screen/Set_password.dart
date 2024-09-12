
import 'package:ecommerce_kit/presentation/ui/screens/Auth_Screen/confrim_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obscureTextNewPass = true;
  bool _obscureTextRePass = true;
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
                'Set Password',
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("New password"),
                      SizedBox(height: 10,),
                      TextField(
                        obscureText: _obscureTextNewPass,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          label: Icon(Icons.password),
                          hintText: "New Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureTextNewPass = !_obscureTextNewPass;
                              });
                            },
                            child: Icon(
                              _obscureTextNewPass
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Re-type your Pasword"),
                      SizedBox(height: 10,),
                      TextField(
                        obscureText: _obscureTextRePass,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          label: Icon(Icons.password),
                          hintText: "Re type password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureTextRePass = !_obscureTextRePass;
                              });
                            },
                            child: Icon(
                              _obscureTextRePass
                                  ? Icons.visibility_off
                                  : Icons.visibility,
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
                              Get.to(ConfrimPassword());
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
            ],
          ),
        ),
      ),
    );
  }
}
