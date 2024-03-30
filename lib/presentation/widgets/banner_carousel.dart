
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key, this.height});

  final double? height;

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {

  final ValueNotifier<int> _currentIndex = ValueNotifier(0);




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: widget.height?? 180.0,
            onPageChanged: (index,reason){
              _currentIndex.value=index;
            },
            viewportFraction: 1,
            autoPlay: true,
          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 1.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                    ),

                    child: Center(child:
                    Image.network("https://images.unsplash.com/photo-1441984904996-e0b6ba687e04?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )
                    )
                );
              },
            );
          }).toList(),
        ),
        //SizedBox(height: 6),
        // ValueListenableBuilder(valueListenable: _currentIndex,
        //     builder: (context,index,_) {
        //       return Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           for(int i=0; i<5; i++)
        //             Container(
        //               height: 12,
        //               width: 12,
        //               margin: EdgeInsets.all(2),
        //               decoration: BoxDecoration(
        //                 color: i == index? Colors.orange : Colors.transparent,
        //                 border: Border.all(
        //                   color: i == index? Colors.orange  : Colors.grey.shade400,
        //                 ),
        //                 borderRadius: BorderRadius.circular(30),
        //               ),
        //             )
        //         ],
        //       );
        //     }
        // ),

      ],
    );
  }
}