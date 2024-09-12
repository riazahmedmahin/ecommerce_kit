import 'package:ecommerce_kit/presentation/ui/screens/Notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.redAccent,
      leading: Icon(
        Icons.eco_rounded,
        color: Colors.green,
        size: 36, 
      ),
      title: Row(
        children: [
          Flexible(
            child: Text(
              "Lifi.Com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24, 
                color: Colors.black,
              ),
              overflow: TextOverflow
                  .ellipsis, 
            ),
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            Get.to(NotificationScreen()); // Navigate to NotificationScreen
          },
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
            size: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: InkWell(
            onTap: () {
              //Get.to(PopularProduct());
            },
            child: CircleAvatar(
              radius: 17,
              child: ClipOval(
                child: Image.network(
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  fit: BoxFit.cover,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(18),
          bottomLeft: Radius.circular(18),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(5.0),
        child: Container(),
      ),
    );
  }
}
