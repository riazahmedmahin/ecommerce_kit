import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaymentDetailsScreen extends StatefulWidget {
  final String paymentMethod;

  PaymentDetailsScreen({required this.paymentMethod});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.paymentMethod} Details'),
        leading: Padding(
          padding:
              const EdgeInsets.only(left: 12.0, top: 12, bottom: 12, right: 12),
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
                  ))),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Visa Card Image Container
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Image.network(
                  'https://bd.visa.com/dam/VCOM/regional/ap/bangladesh/global-elements/images/bd-visa-gold-card-498x280.png',
                  height: 200,
                  //width: 100, // Adjust height as needed
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Please provide your card details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text("Cardholder Name"),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name on Card',
                ),
              ),
              SizedBox(height: 20),
              Text("Card Number"),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'XXXX XXXX XXXX XXXX',
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Expiry Date"),
                        SizedBox(height: 8),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'MM/YY',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("CVV"),
                        SizedBox(height: 8),
                        TextField(
                          obscureText: true,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'CVV',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Lottie.asset(
                                "assets/Animation - 1723475718343.json",
                                height: 100,
                                width: 100,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Payment successfully done',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // actions: [
                          //   TextButton(
                          //     onPressed: () {
                          //       Navigator.of(context).pop();
                          //     },
                          //     child: Text('OK'),
                          //   ),
                          //   TextButton(
                          //     onPressed: () {
                          //       Navigator.of(context).pop();
                          //     },
                          //     child: Text('Cancel'),
                          //   ),
                          // ],
                        );
                      },
                    );
                  },
                  child: Text('Continue'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
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
