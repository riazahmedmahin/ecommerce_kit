import 'package:ecommerce_kit/presentation/ui/screens/Item_Category_screen/LatestProduct_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/Auth_Screen/signup_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/Item_Category_screen/NewProduct_screen.dart';
import 'package:ecommerce_kit/presentation/ui/screens/Item_Category_screen/popularProduct_screen.dart';
import 'package:ecommerce_kit/presentation/widgets/appbar.dart';
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
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search_off_sharp),
                  hintText: "Search your products"
                ),
              ),
              SizedBox(
                //height: 10,
              ),
              Text(
                'Category',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 18, color: Colors.black),
              ),
        
              calegoryItem(),
              SizedBox(height: 10,),
              BannerCarousel(imageUrls: [
                "https://images.unsplash.com/photo-1441984904996-e0b6ba687e04?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D%22,",
                "https://images.unsplash.com/photo-1623742310401-d8057c3c43c8?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyZnVtZXxlbnwwfHwwfHx8MA%3D%3D",
                "https://images.unsplash.com/photo-1551107696-a4b0c5a0d9a2?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODR8fHNob2VzJTIwZ2FsbGVyeXxlbnwwfHwwfHx8MA%3D%3D",
                "https://plus.unsplash.com/premium_photo-1678218594563-9fe0d16c6838?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c2hpcnQlMjBwaWN0dXJlfGVufDB8fDB8fHww",
                "https://images.unsplash.com/photo-1523381210434-271e8be1f52b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNsb3RoaW5nfGVufDB8fDB8fHww",
              ],),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 18, color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PopularProductsScreen());
                    },
                    child: Text("See All ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),))
                ],
              ),
              popular_product(),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 18, color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(NewProductsScreen());
                    },
                    child: Text("See All ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),))
                ],
              ),
              New_product(),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 18, color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                       Get.to(LatestProductScreen());
                    },
                    child: Text("See All ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),))
                ],
              ),
              latest_product(),

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


class latest_product extends StatelessWidget {
  latest_product({
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
      'price': 200.00,
    },
    {
      'image': 'https://images.unsplash.com/photo-1718774143843-73cbd7d5b005?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHN1biUyMGdsYXNzfGVufDB8fDB8fHww',
      'name': 'oliver peoples Sunglass',
      'price': 135.00,
    },
    {
      'image': 'https://images.unsplash.com/photo-1543508282-6319a3e2621f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHNob2VzfGVufDB8fDB8fHww',
      'name': 'Latest Nike Classic',
      'price': 125.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            primary: false,
            itemCount: _product.length,
            itemBuilder: (context, index) {
              return ProductCardItem(
                image: _product[index]['image'],
                name: _product[index]['name'],
                price: _product[index]['price'],
              );
            },
            separatorBuilder: (_, __) {
              return SizedBox(
                width: 8,
              );
            },
          ),
        ),
        ///------------------------------more ----------------------------------------
      ],
    );
  }
}

class New_product extends StatelessWidget {
  New_product({
    super.key,
  });

  final List<Map<String, dynamic>> _product = [
    {
      'image': "https://plus.unsplash.com/premium_photo-1711051513016-72baa1035293?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8fDA%3D",
      'name': 'IELGY Ladies snakers',
      'price': 130.00,
    },
    {
      'image': 'https://images.unsplash.com/photo-1512207724313-a4e675ec79ab?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFrZXVwfGVufDB8fDB8fHww',
      'name': 'Breezebeauty',
      'price': 140.00,
    },
    {
      'image': 'https://images.unsplash.com/photo-1609709295948-17d77cb2a69b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHNoaXJ0fGVufDB8fDB8fHww',
      'name': 'Peter England shirt',
      'price': 120.00,
    },
    {
      'image': 'https://images.unsplash.com/photo-1458538977777-0549b2370168?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyZnVtZXxlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Azzaro Classic Perfume',
      'price': 115.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            primary: false,
            itemCount: _product.length,
            itemBuilder: (context, index) {
              return ProductCardItem(
                image: _product[index]['image'],
                name: _product[index]['name'],
                price: _product[index]['price'],
              );
            },
            separatorBuilder: (_, __) {
              return SizedBox(
                width: 8,
              );
            },
          ),
        ),
        ///------------------------------more ----------------------------------------
      ],
    );
  }
}

class popular_product extends StatelessWidget {
  popular_product({
    super.key,
  });

  final List<Map<String, dynamic>> _product = [
    {
      'image': 'https://static.vecteezy.com/system/resources/thumbnails/028/252/048/small_2x/men-s-t-shirt-realistic-mockup-in-different-colors-ai-generated-photo.jpg',
      'name': 'Classic T-shirt',
      'price': 120.00,
    },
    {
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmQLKkJO9A2-GOJenheK_55Ou7sys4MaWfGQ&s',
      'name': 'Vogue Bag ladies',
      'price': 95.50,
    },
    {
      'image': 'https://images.unsplash.com/photo-1549298916-b41d501d3772?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHNob2VzfGVufDB8fDB8fHww',
      'name': 'Puma Shoes',
      'price': 85.00,
    },
    {
      'image': 'https://images.unsplash.com/photo-1593487568720-92097fb460fb?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHBlcmZ1bWV8ZW58MHx8MHx8fDA%3D',
      'name': 'Reebok crossfit',
      'price': 110.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            primary: false,
            itemCount: _product.length,
            itemBuilder: (context, index) {
              return ProductCardItem(
                image: _product[index]['image'],
                name: _product[index]['name'],
                price: _product[index]['price'],
              );
            },
            separatorBuilder: (_, __) {
              return SizedBox(
                width: 8,
              );
            },
          ),
        ),
        ///------------------------------more ----------------------------------------
      ],
    );
  }
}

class calegoryItem extends StatelessWidget {
  calegoryItem({
    super.key,
  });
  final  List _category =[
    "https://cdn-icons-png.flaticon.com/512/2935/2935183.png",
    "https://cdn3.vectorstock.com/i/1000x1000/99/92/beauty-icon-vector-1679992.jpg",
    "https://cdn-icons-png.flaticon.com/512/5499/5499242.png",
    "https://img.freepik.com/free-vector/beauty-cosmetics-icon-set_53876-64082.jpg",
    "https://cdn-icons-png.flaticon.com/128/3549/3549070.png",
    "https://cdn-icons-png.flaticon.com/128/10139/10139795.png",
  ];

  final List _text=[
    'Apparel ',
    'Beauty ',
    'shoe',
    'Make-Up',
    'Watch',
    'Perfume',
    //'Make Up'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
              width: 5,
            );
          },
        ),
      ),
    );
  }
}



