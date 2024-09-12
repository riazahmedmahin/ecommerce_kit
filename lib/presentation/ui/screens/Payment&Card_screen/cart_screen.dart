import 'package:ecommerce_kit/presentation/ui/screens/Payment&Card_screen/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product {
  String image;
  String name;
  int unitPrice;
  String color;
  String size;
  int quantity;

  Product(this.image, this.name, this.unitPrice, this.color, this.size, this.quantity);
}

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Product> products = [
    Product('https://images.unsplash.com/photo-1541643600914-78b084683601?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyZnVtZXxlbnwwfHwwfHx8MA%3D%3D', 'Perfume', 10, 'Brown', '2ML', 1),
    Product('https://static.vecteezy.com/system/resources/thumbnails/028/252/048/small_2x/men-s-t-shirt-realistic-mockup-in-different-colors-ai-generated-photo.jpg', 'T-Shirt', 25, 'Gray', 'L', 1),
    Product('https://images.unsplash.com/photo-1549298916-b41d501d3772?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHNob2VzfGVufDB8fDB8fHww', 'Sport Shoe', 33, 'Brown', '30', 1),
    Product('https://storage.apex4u.com/fa8e0210-6afc-4c57-a936-1ca299b83bec.jpg', 'School Shoe', 30, 'White', '28', 1),
    Product('https://images.unsplash.com/photo-1598808503746-f34c53b9323e?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzZ8fHN1aXR8ZW58MHx8MHx8fDA%3D', 'Suit', 60, 'Black', 'L', 1),
    Product('https://via.placeholder.com/100', 'Sport Dress', 43, 'Black', 'M', 1),
  ];

  int totalAmount = 0;

  @override
  void initState() {
    super.initState();
    totalAmount = calculateTotalAmount();
  }

  void increaseItemCount(int index) {
    setState(() {
      products[index].quantity++;
      totalAmount = calculateTotalAmount();
    });
  }

  void decreaseItemCount(int index) {
    if (products[index].quantity > 0) {
      setState(() {
        products[index].quantity--;
        totalAmount = calculateTotalAmount();
      });
    }
  }

  void removeItem(int index) {
    setState(() {
      products.removeAt(index);
      totalAmount = calculateTotalAmount();
    });
  }

  int calculateTotalAmount() {
    int total = 0;
    for (var product in products) {
      total += product.quantity * product.unitPrice;
    }
    return total;
  }

  void showMySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0,top: 12,bottom:12,right: 12),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(9)
              ),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back_ios_new_sharp,size: 18,))),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 9.0),
                                child: Image.network(
                                  products[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(products[index].name),
                                    IconButton(
                                      icon: Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Icon(Icons.delete),
                                      ),
                                      onPressed: () => removeItem(index),
                                    ),
                                  ],
                                ),
                                subtitle: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            const TextSpan(
                                              text: 'Color: ',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '${products[index].color}',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '  Size: ',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '${products[index].size}',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(4),
                                              border: Border.all(color: Colors.black),
                                            ),
                                            child: Material(
                                              color: Colors.transparent,
                                              child: InkWell(
                                                borderRadius: BorderRadius.circular(4),
                                                onTap: () => decreaseItemCount(index),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.remove,
                                                    size: 18,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                              '${products[index].quantity.toString()}',
                                              style: TextStyle(color: Colors.black),
                                            ),
                                          ),
                                          Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(4),
                                              border: Border.all(color: Colors.black),
                                            ),
                                            child: Material(
                                              color: Colors.transparent,
                                              child: InkWell(
                                                borderRadius: BorderRadius.circular(4),
                                                onTap: () => increaseItemCount(index),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 18,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '${products[index].unitPrice * products[index].quantity}\$',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 14),
                        child: Text(
                          'Total Amount:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 16, 14),
                        child: Text(
                          '${totalAmount}\$',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(CheckoutScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(343, 48),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "CHECK OUT",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
