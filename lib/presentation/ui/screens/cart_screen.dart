import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          productlist,
          pricesection
        ],
      ),

    );
  }

  SizedBox get productlist {
    return SizedBox(
          height: 650,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            primary: false,
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              child: Icon(Icons.shopping_cart_sharp),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Product name",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700)),
                                Text("Product description"),
                                Text("\$120",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ));
            },
          ),
        );
  }

  Expanded get pricesection {
    return  Expanded(
            
            child: Container(
          height: 20,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            )
          ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total price",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                          Text("\$120",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: (){
                      }, child: Text("Checkout",style: TextStyle(fontWeight: FontWeight.w700),)),
                    ),

                  ],
                ),
              ),
        ));
  }
}
