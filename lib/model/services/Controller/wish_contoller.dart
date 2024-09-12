import 'package:get/get.dart';

class WishController extends GetxController {
  var wishlist = <Map<String, dynamic>>[].obs;

  void addToWishlist(String image, String name, double price) {
    wishlist.add({
      'image': image,
      'name': name,
      'price': price,
    });
    Get.snackbar(
      "Added to Wishlist",
      name,
      isDismissible: true,
      duration: Duration(seconds: 2),
    );
  }

  void removeFromWishlist(Map<String, dynamic> item) {
    wishlist.remove(item);
    Get.snackbar(
      "Removed from Wishlist",
      item['name'],
      isDismissible: true,
      duration: Duration(seconds: 2),
    );
  }
}
