import 'package:ecommerce_kit/presentation/ui/screens/Auth_Screen/Signin_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/Payment&Card_screen/cart_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/Auth_Screen/change_password_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/Notification_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/profile_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/wish_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
          leading: Padding(
          padding: const EdgeInsets.only(left: 12.0,top: 12,bottom:12,right: 12),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back_ios_new_sharp,size: 17,))
          ),
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), // Replace with your image path
              ),
              SizedBox(height: 10),
              Text(
                'Jhon Doe',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 5),
              Text(
                '@Dhondoe',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(ProfileScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Divider(height: 40, thickness: 1),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favourite'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.to(WishlistPage());
                },
              ),
              ListTile(
                leading: Icon(Icons.receipt_long),
                title: Text('My Orders'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.to(CartScreen());
                },
              ),
              ListTile(
                leading: Icon(Icons.notification_add),
                title: Text('Notification'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.to(NotificationScreen());
                },
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text('Change Password'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.to(ChangePasswordScreen());
                },
              ),
              Divider(height: 40, thickness: 1),
              ListTile(
                leading: Icon(Icons.help_outline),
                title: Text('Help & Support'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to help & support
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log out'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                 Get.to(SignInScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
