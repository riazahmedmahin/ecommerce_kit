import 'package:flutter/material.dart';
import 'package:ecommerce_kit/presentation/widgets/product_carosel.dart';

class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  String _selectedSize = 'S'; // Default selected size
  Color _selectedColor = Colors.black; // Default selected color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details"),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      child: ProductImageCarousel(
                        imgUrls: [
                          "https://plus.unsplash.com/premium_photo-1673356302439-fa5252f45abb?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fHQlMjBzaGlydCUyMGRlc2lnbnxlbnwwfHwwfHx8MA%3D%3D",
                          "https://plus.unsplash.com/premium_photo-1673356301514-2cad91907f74?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dCUyMHNoaXJ0JTIwZGVzaWdufGVufDB8fDB8fHww",
                          "https://plus.unsplash.com/premium_photo-1690338237128-b32fedb44d55?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHQlMjBzaGlydCUyMGRlc2lnbnxlbnwwfHwwfHx8MA%3D%3D"
                        ],
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: IconButton(
                          icon: Icon(Icons.favorite_border, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Classic Cotton T-Shirt',
                            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 23,),
                          Icon(Icons.star, size: 18, color: Colors.amber),
                          Text(
                            "4.4",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black45,
                            ),
                          ),
                          //SizedBox(width: 8),
                          Text(
                            '(200 reviews)', // Number of reviews
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),

                          SizedBox(width: 4),
                        ],
                      ),

                      SizedBox(height: 4),
                      Text(
                        '100% Cotton',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'This classic cotton T-shirt is made from high-quality, soft, and breathable fabric. Perfect for casual wear and available in a range of sizes and colors.Comfort Meets Style – Embrace the Everyday Classic',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Text('Size'),
                          SizedBox(width: 16),
                          SizeOption('S', _selectedSize == 'S', () {
                            setState(() {
                              _selectedSize = 'S';
                            });
                          }),
                          SizeOption('M', _selectedSize == 'M', () {
                            setState(() {
                              _selectedSize = 'M';
                            });
                          }),
                          SizeOption('L', _selectedSize == 'L', () {
                            setState(() {
                              _selectedSize = 'L';
                            });
                          }),
                          SizeOption('XL', _selectedSize == 'XL', () {
                            setState(() {
                              _selectedSize = 'XL';
                            });
                          }),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Text('Color'),
                          SizedBox(width: 16),
                          ColorOption(Colors.black, _selectedColor == Colors.black, () {
                            setState(() {
                              _selectedColor = Colors.black;
                            });
                          }),
                          ColorOption(Colors.white, _selectedColor == Colors.white, () {
                            setState(() {
                              _selectedColor = Colors.white;
                            });
                          }),
                          ColorOption(Colors.brown.shade200, _selectedColor == Colors.brown.shade200, () {
                            setState(() {
                              _selectedColor = Colors.brown.shade200;
                            });
                          }),
                          ColorOption(Colors.yellow, _selectedColor == Colors.yellow, () {
                            setState(() {
                              _selectedColor = Colors.yellow;
                            });
                          }),
                        ],
                      ),
                      SizedBox(height: 26),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$25',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Handle decrement logic here
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent, // Background color of the box
                                    borderRadius: BorderRadius.circular(4), // Rounded corners (optional)
                                    border: Border.all(color: Colors.black), // Border color
                                  ),
                                  child: Icon(Icons.remove, size: 18), // Icon inside the box
                                ),
                              ),
                              SizedBox(width: 16), // Spacing between the buttons
                              Text('1', style: TextStyle(fontSize: 18)),
                              SizedBox(width: 16), // Spacing between the buttons
                              GestureDetector(
                                onTap: () {
                                  // Handle increment logic here
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent, // Background color of the box
                                    borderRadius: BorderRadius.circular(4), // Rounded corners (optional)
                                    border: Border.all(color: Colors.black), // Border color
                                  ),
                                  child: Icon(Icons.add, size: 18), // Icon inside the box
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      SizedBox(height: 66),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          minimumSize: Size(double.infinity, 50),
                        ),
                        onPressed: () {},
                        child: Text('Add to Cart', style: TextStyle(fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SizeOption extends StatelessWidget {
  final String size;
  final bool isSelected;
  final VoidCallback onTap;

  SizeOption(this.size, this.isSelected, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.transparent,
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          size,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class ColorOption extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  ColorOption(this.color, this.isSelected, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(color: isSelected ? Colors.black : Colors.black26),
        ),
        width: 24,
        height: 24,
        child: isSelected
            ? Icon(
          Icons.check,
          color: Colors.white,
          size: 16,
        )
            : null,
      ),
    );
  }
}
