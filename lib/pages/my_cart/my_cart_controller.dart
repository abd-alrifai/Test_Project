import 'package:get/get.dart';
import 'package:test_project/local_data/local_data.dart';

class MyCartController extends GetxController {
  var increase = 0.obs;
  int x = 0;

LocalData localData =LocalData();

  btnCount(String x, int index) {

    if (x == "minus") {
      if (increase > 0) {
   localData.dataMyCart[index].count-- ;


      }
    } else {
        increase =  localData.dataMyCart[index].count++ as RxInt;
    }
  }
}
