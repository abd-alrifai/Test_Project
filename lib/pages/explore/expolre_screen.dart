import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:test_project/local_data/local_data.dart';

import '../navigationbar_control.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});
  LocalData localData = LocalData();
  NavBarController navBarController = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      SizedBox(height: 20,),
      Text(
        "Find Products",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
      ),
      Expanded(
        child: GridView.builder(
          itemCount: localData.dataExplore.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (_, int index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.44,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: Color(localData.dataExplore[index].color),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      child: Image(
                        image: AssetImage(localData.dataExplore[index].image),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      localData.dataExplore[index].title,
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),

            ]),
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
/*
Expanded(
child: ListView.builder(
scrollDirection: Axis.vertical,
shrinkWrap: true,
itemCount: 5,
itemBuilder: (context, int index) {
return Row(
children: [
InkWell(
onTap: () {},
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Container(
width: MediaQuery.of(context).size.width * 0.44,
height: MediaQuery.of(context).size.height * 0.3,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
border: Border.all(),
),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Image(image: AssetImage(localData.dataExplore[index].image),),
Align(
alignment: Alignment.center,
child: Text(localData.dataExplore[index].title,))
],
),
),
),
),
],
);
}),
)*/
