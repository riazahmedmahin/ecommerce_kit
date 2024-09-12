import 'package:ecommerce_kit/presentation/ui/screens/Edit%20profile.dart';
import 'package:ecommerce_kit/presentation/ui/screens/Payment&Card_screen/cart_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/home_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/wish_pages.dart';
import 'package:flutter/material.dart';
//import 'package:onboard_animation/components/home_pages.dart';

class MainBottomNavScreen extends StatefulWidget {
  @override
  _MainBottomNavScreenState createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    CartScreen(),
    WishlistPage(),
    EditProfileScreen(),
    
    // Add your other pages here
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 12),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black, // Background color
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.transparent, // Border color
              width: 2, // Border width
            ),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent, // Disable splash effect
              highlightColor: Colors.transparent, // Disable highlight effect
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent, // Making it transparent
              elevation: 0,
              selectedItemColor: Colors.white, // Selected icon color
              unselectedItemColor: Colors.grey.shade400, // Unselected icon color
              showSelectedLabels: true,
              showUnselectedLabels: false,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                  icon: _buildAnimatedIcon(Icons.home_filled, 0),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: _buildAnimatedIcon(Icons.shopping_cart, 1),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: _buildAnimatedIcon(Icons.favorite, 2),
                  label: 'Favourite',
                ),
                BottomNavigationBarItem(
                  icon: _buildAnimatedIcon(Icons.settings, 3),
                  label: 'Settings',
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedIcon(IconData iconData, int index) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return _selectedIndex == index
            ? ScaleTransition(scale: animation, child: child)
            : child;
      },
      child: Icon(
        iconData,
        key: ValueKey<int>(_selectedIndex == index ? 1 : 0),
        color: _selectedIndex == index ? Colors.white : Colors.grey.shade600,
      ),
    );
  }
}
