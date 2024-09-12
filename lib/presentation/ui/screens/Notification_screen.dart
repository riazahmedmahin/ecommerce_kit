import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {'title': 'Nike sports shoe Added to Wishlist', 'body': 'You added a new item to your wishlist!'},
    {'title': 'Sale Alert', 'body': 'A 20% discount on your favorite items!'},
    {'title': 'Order Shipped', 'body': 'Your order has been shipped!'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.redAccent,
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
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.notifications, color: Colors.redAccent),
              title: Text(notifications[index]['title'] ?? ''),
              subtitle: Text(notifications[index]['body'] ?? ''),
            ),
          );
        },
      ),
    );
  }
}
