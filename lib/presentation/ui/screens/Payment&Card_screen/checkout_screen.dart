import 'package:ecommerce_kit/presentation/ui/screens/Payment&Card_screen/payment_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int? _selectedPaymentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(9),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new_sharp, size: 18),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('\$7,000', style: TextStyle(fontSize: 16)), // Updated to $
                  SizedBox(height: 16),
                  Text(
                    'Shipping',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('\$30', style: TextStyle(fontSize: 16)), // Updated to $
                  Divider(height: 32),
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('\$7,030', style: TextStyle(fontSize: 16)), // Updated to $
                  Divider(height: 32),
                  Text(
                    'Payment',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  PaymentOption(
                    logo: 'https://upload.wikimedia.org/wikipedia/commons/4/41/Visa_Logo.png',
                    number: '********2109',
                    isSelected: _selectedPaymentIndex == 0,
                    onTap: () {
                      setState(() {
                        _selectedPaymentIndex = 0;
                      });
                      Get.to(PaymentDetailsScreen(paymentMethod: 'Visa'));
                    },
                  ),
                  PaymentOption(
                    logo: 'https://upload.wikimedia.org/wikipedia/commons/b/b5/PayPal.svg',
                    number: '********2109',
                    isSvg: true,
                    isSelected: _selectedPaymentIndex == 1,
                    onTap: () {
                      setState(() {
                        _selectedPaymentIndex = 1;
                      });
                      Get.to(() => PaymentDetailsScreen(paymentMethod: 'PayPal'));
                    },
                  ),
                  PaymentOption(
                    logo: 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Mastercard_2019_logo.svg',
                    number: '********2109',
                    isSvg: true,
                    isSelected: _selectedPaymentIndex == 2,
                    onTap: () {
                      setState(() {
                        _selectedPaymentIndex = 2;
                      });
                      Get.to(() => PaymentDetailsScreen(paymentMethod: 'MasterCard'));
                    },
                  ),
                  PaymentOption(
                    logo: 'https://tds-images.thedailystar.net/sites/default/files/styles/very_big_201/public/images/2023/07/31/bkash.jpg',
                    number: '********2109',
                    isSelected: _selectedPaymentIndex == 3,
                    onTap: () {
                      setState(() {
                        _selectedPaymentIndex = 3;
                      });
                      Get.to(() => PaymentDetailsScreen(paymentMethod: 'Bkash'));
                    },
                  ),
                  PaymentOption(
                    logo: 'https://download.logo.wine/logo/Nagad/Nagad-Logo.wine.png',
                    number: '********2109',
                    isSelected: _selectedPaymentIndex == 4,
                    onTap: () {
                      setState(() {
                        _selectedPaymentIndex = 4;
                      });
                      Get.to(() => PaymentDetailsScreen(paymentMethod: 'Nagad'));
                    },
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

class PaymentOption extends StatelessWidget {
  final String logo;
  final String number;
  final bool isSvg;
  final bool isSelected;
  final VoidCallback onTap;

  PaymentOption({
    required this.logo,
    required this.number,
    this.isSvg = false,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.red : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            isSvg
                ? SvgPicture.network(
                    logo,
                    width: 24,
                    height: 24,
                  )
                : Image.network(
                    logo,
                    width: 24,
                    height: 24,
                  ),
            SizedBox(width: 16),
            Text(number),
          ],
        ),
      ),
    );
  }
}
