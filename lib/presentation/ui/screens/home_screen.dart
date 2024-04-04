import 'package:ecommerce_kit/presentation/ui/screens/signup_screen.dart';
import 'package:ecommerce_kit/presentation/widgets/banner_carousel.dart';
import 'package:ecommerce_kit/presentation/widgets/categoryitem.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/product_card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Category',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 28, color: Colors.grey.shade700),
              ),
              calegoryItem(),
              Text(
                'Latest',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 28, color: Colors.grey.shade700),
              ),SizedBox(height: 20,),
              BannerCarousel(),
              SizedBox(height: 20,),
              popular_product(),
        
            ],
          ),
        ),
      ),
    );
  }

  AppBar Appbar() {
    return AppBar(
      leading: Icon(Icons.eco_rounded,color: Colors.redAccent,size: 40,),
      titleSpacing: 2,
      title: Text(
        'Lifi.com',
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontSize: 28, color: Colors.grey.shade700),
      ),
      backgroundColor: Colors.white,
      actions: [
        Icon(Icons.message),
        SizedBox(
          width: 20,
        ),
       IconButton(onPressed: (){
         Get.to(()=>SignUpScreen());

       }, icon: Icon(Icons.notifications))
      ],
    );
  }
}

class popular_product extends StatelessWidget {
   popular_product({
    super.key,
  });

  final  List _product =[
    'https://storage.apex4u.com/fa8e0210-6afc-4c57-a936-1ca299b83bec.jpg',
    'https://media.e-valy.com/cms/products/images/2a666828-c35e-435f-b1bb-10fd0a75c238',
    'https://static.vecteezy.com/system/resources/thumbnails/028/252/048/small_2x/men-s-t-shirt-realistic-mockup-in-different-colors-ai-generated-photo.jpg',
    'https://media.e-valy.com/cms/products/images/27eba057-798a-4556-841a-57aaa810bf73',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: false,
        itemCount: _product.length,
        itemBuilder: (context, index) {
          return ProductcCardItem(image: _product[index],);
        },
        separatorBuilder: (_, __) {
          return SizedBox(
            width: 8,
          );
        },
      ),
    );
  }
}

class calegoryItem extends StatelessWidget {
   calegoryItem({
    super.key,
  });
  final  List _category =[
    "https://cdn-icons-png.flaticon.com/512/2935/2935183.png",
    //"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",
    //"data:image/png;base64,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
    "https://cdn3.vectorstock.com/i/1000x1000/99/92/beauty-icon-vector-1679992.jpg",
    "https://cdn-icons-png.flaticon.com/512/5499/5499242.png",
    "https://img.freepik.com/free-vector/beauty-cosmetics-icon-set_53876-64082.jpg"
  ];

  final List _text=[
    'Apparel ',
    'Beauty ',
    'shoe',
    'Make-Up',
    //'Make Up'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: false,
        itemCount: _category.length,
        itemBuilder: (context, index) {
          return CategoryItem(
          image: _category[index], text: _text[index],);
        },
        separatorBuilder: (_, __) {
          return SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
