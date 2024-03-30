
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ProductcCardItem extends StatelessWidget {
   ProductcCardItem({
    super.key,required this.image
  });
 final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //Get.to(()=>ProductDetailsScreen());
      },
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        height: 190,
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)
                ),
                child: Image.network( image,
                  width:160,
                  height: 120,
                  fit:BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("nike show 120h new collection",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Row(
                      children: [
                        Text("\$120",
                          style: TextStyle(
                              fontSize: 12,
                              //color: Colors.redAccent,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(Icons.star,size: 14,color: Colors.amber,),
                            Text("4.4",style:
                            TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black45),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Card(
                          color: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(Icons.favorite_border_outlined,size: 12,color: Colors.white,),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}