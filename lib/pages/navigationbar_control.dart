import 'package:get/get.dart';
import 'package:test_project/pages/explore/expolre_screen.dart';
import 'package:test_project/pages/my_cart/my_cart_screen.dart';

import 'beverages/beverages_screen.dart';

class NavBarController extends GetxController{


  RxInt currentIndex = 0.obs;
  RxInt indexBar = 1.obs;
  void onTapeBar(index) {
    indexBar.value = index;
    onChangePage(indexBar.value);
  }


  void onTabTapped(int index) {
    currentIndex.value = index;
  }


  void onChangePage(index) {
    switch (index) {
      case 0:
        Get.to(BeveragesScreen());
        break;
      case 1:
        Get.to(ExploreScreen());
        break;
      case 2:
        Get.to(MyCartScreen());
        break;
      case 3:
      //Get.to(FavouriteScreen());
        break;
      case 4:
      //Get.to(ProfileScreen());
        break;

    }
  }
}