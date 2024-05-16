import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_project/local_data/local_data.dart';
import 'package:test_project/pages/my_cart/my_cart_controller.dart';
import 'package:test_project/pages/navigationbar_control.dart';

import '../order_accept/order_accept.dart';

class MyCartScreen extends StatelessWidget {
  MyCartScreen({super.key});
  LocalData localData = LocalData();
  NavBarController navBarController = Get.put(NavBarController());
  MyCartController myCartController = Get.put(MyCartController());
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Card(),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: localData.dataMyCart.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                width: 1.0, color: Color(0xFFE2E2E2)),
                            // bottom: BorderSide(width: 8.0, color:  Color(0xFFE2E2E2)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 75,
                              height: 75,
                              child: Image(
                                image: AssetImage(
                                    localData.dataMyCart[index].image),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      textAlign: TextAlign.left,
                                      localData.dataMyCart[index].title,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      textAlign: TextAlign.left,
                                      localData.dataMyCart[index].subTitle,
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                      /*  myCartController.btnCount(
                                            "minus", index);*/
                                        //  localData.dataMyCart[index].count--;
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Icon(Icons.minimize)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    /*  Obx(()=>Text("${myCartController.increase.value}")),*/

                                    Text(
                                        "${localData.dataMyCart[index].count}"),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        /*myCartController.btnCount(
                                            "plus", index);*/
                                        //   localData.dataMyCart[index].count++;
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Icon(Icons.add),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Text(localData.dataMyCart[index].Price),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                splashColor: Colors.black,
                minWidth: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height / 15,
                color: Color(0xFF53B175),
                child: Text(
                  'Go to Checkout',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onPressed: () {
                  Get.bottomSheet(
                    backgroundColor: Colors.white,
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Checkout",
                                style: TextStyle(fontSize: 20),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: localData.dataBtnShit.length,
                              itemBuilder: (_, int index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          width: 1.0, color: Color(0xFFE2E2E2)),
                                      // bottom: BorderSide(width: 8.0, color:  Color(0xFFE2E2E2)),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          localData.dataBtnShit[index].start,
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.grey),
                                        ),
                                        Spacer(),
                                        Text(
                                          localData.dataBtnShit[index].end,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            child: localData
                                                .dataBtnShit[index].icon,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                "By placing an order you agree to our\nTerms And Conditions",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            ),
                            Row(
                              //    mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Home",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Profile",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          splashColor: Colors.black,
                          minWidth: MediaQuery.of(context).size.width * 0.88,
                          height: MediaQuery.of(context).size.height / 15,
                          color: Color(0xFF53B175),
                          child: Text(
                            'Place Order',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          onPressed: () {
                            Get.to(OrderAcceptScreen());
                          },
                        ),
                        Card(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 60,
            selectedIndex: navBarController.indexBar.value,
            onDestinationSelected: navBarController.onTapeBar,
            destinations: [
              NavigationDestination(
                  icon: Icon(Icons.shop_outlined), label: 'Shop'),
              NavigationDestination(
                  icon: Icon(Icons.travel_explore_rounded), label: 'Expolre'),
              NavigationDestination(
                  icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
              NavigationDestination(
                  icon: Icon(Icons.favorite_border), label: 'Favourite'),
              NavigationDestination(
                  icon: Icon(Icons.person_2_outlined), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
