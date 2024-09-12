import 'package:ecommerce_kit/presentation/widgets/CatagoryView_products.dart';
import 'package:flutter/material.dart';

class LatestProductScreen extends StatefulWidget {
  const LatestProductScreen({super.key});

  @override
  State<LatestProductScreen> createState() => _LatestProductScreenState();
}

class _LatestProductScreenState extends State<LatestProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latest products"),
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: LatestProduct(),
            ),
          ],
        ),
      ),
    );
  }
}

class LatestProduct extends StatelessWidget {
  LatestProduct({
    super.key,
  });

  final List<Map<String, dynamic>> _product = [
    {
      'image': "https://plus.unsplash.com/premium_photo-1676748933022-e1183e997436?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyZnVtZXxlbnwwfHwwfHx8MA%3D%3D",
      'name': 'Chanel perfume',
      'price': 150.00,
    },
    {
      'image': 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2F0Y2h8ZW58MHx8MHx8fDA%3D',
      'name': 'Longines Watch',
      'price': 22.00,
    },
    {
      'image': 'https://images.unsplash.com/photo-1718774143843-73cbd7d5b005?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHN1biUyMGdsYXNzfGVufDB8fDB8fHww',
      'name': 'oliver peoples Sunglass',
      'price': 13.00,
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
    {
      'image': 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2F0Y2h8ZW58MHx8MHx8fDA%3D',
      'name': 'Longines Watch',
      'price': 22.00,
    },

    {
      'image': 'https://images.unsplash.com/photo-1718774143843-73cbd7d5b005?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHN1biUyMGdsYXNzfGVufDB8fDB8fHww',
      'name': 'oliver peoples Sunglass',
      'price': 13.00,
    },
    {
      'image': 'https://images.unsplash.com/photo-1543508282-6319a3e2621f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHNob2VzfGVufDB8fDB8fHww',
      'name': 'Latest Nike Classic',
      'price': 120.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      //physics: NeverScrollableScrollPhysics(),
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
