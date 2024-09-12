import 'package:ecommerce_kit/presentation/widgets/CatagoryView_products.dart';
import 'package:flutter/material.dart';

class NewProductsScreen extends StatefulWidget {
  const NewProductsScreen({super.key});

  @override
  State<NewProductsScreen> createState() => _NewProductsScreenState();
}

class _NewProductsScreenState extends State<NewProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New products"),
        leading: Padding(
          padding: const EdgeInsets.only(
              left: 12.0, top: 12, bottom: 12, right: 12),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(12)),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                size: 17,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: NewProduct(),
            ),
          ],
        ),
      ),
    );
  }
}

class NewProduct extends StatelessWidget {
  NewProduct({super.key});

  final List<Map<String, dynamic>> _product = [
    {
      'image':
          "https://plus.unsplash.com/premium_photo-1711051513016-72baa1035293?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8fDA%3D",
      'name': 'IELGY Ladies snakers',
      'price': 130.00,
    },
    {
      'image':
          'https://images.unsplash.com/photo-1512207724313-a4e675ec79ab?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFrZXVwfGVufDB8fDB8fHww',
      'name': 'Breezebeauty',
      'price': 140.00,
    },
    {
      'image':
          'https://images.unsplash.com/photo-1609709295948-17d77cb2a69b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHNoaXJ0fGVufDB8fDB8fHww',
      'name': 'Peter England shirt',
      'price': 120.00,
    },
    {
      'image':
          'https://images.unsplash.com/photo-1458538977777-0549b2370168?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyZnVtZXxlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Azzaro Classic Perfume',
      'price': 115.00,
    },
      {
      'image': 'https://images.unsplash.com/photo-1543508282-6319a3e2621f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHNob2VzfGVufDB8fDB8fHww',
      'name': 'Latest Nike Classic',
      'price': 120.00,
    },
       {
      'image': "https://plus.unsplash.com/premium_photo-1676748933022-e1183e997436?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyZnVtZXxlbnwwfHwwfHx8MA%3D%3D",
      'name': 'Chanel perfume',
      'price': 150.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of columns in the grid
        crossAxisSpacing: 0.8, // Space between columns
        mainAxisSpacing: 0.0, // Space between rows
        childAspectRatio: 0.67, // Adjusted aspect ratio
      ),
      itemCount: _product.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(4), // Adds space around each item
          child: Product(
            image: _product[index]['image'],
            name: _product[index]['name'],
            price: _product[index]['price'],
          ),
        );
      },
    );
  }
}
