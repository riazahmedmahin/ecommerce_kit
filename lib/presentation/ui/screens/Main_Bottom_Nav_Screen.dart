import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:ecommerce_kit/presentation/ui/screens/cart_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/home_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

   int _seletedindex = 0;
   List _Pages = [
     HomeScreen(),
     CartScreen(),
     ProfileScreen()
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Pages[_seletedindex],

      bottomNavigationBar:  Container(
        height: 160,
        color: Colors.white,
        child: DotNavigationBar(
          currentIndex: _seletedindex,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.grey,
          dotIndicatorColor: Colors.redAccent,
          backgroundColor: Colors.grey.shade300,
          splashColor: Colors.transparent,
          onTap: (index){
            setState(() {
              _seletedindex=index;

            });

        },
          // dotIndicatorColor: Colors.black,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: Icon(Icons.home),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: Icon(Icons.search),
            ),

            /// Search
            DotNavigationBarItem(
              icon: Icon(Icons.shopping_cart_sharp),
              //selectedColor: Colors.orange,
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person),
              //selectedColor: Colors.teal,
            ),

            DotNavigationBarItem(
              icon: Icon(Icons.menu),
              //selectedColor: Colors.teal,
            ),

          ],
        ),
      ),

    );
  }
}
