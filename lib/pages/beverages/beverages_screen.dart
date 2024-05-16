import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/local_data/local_data.dart';
import 'package:test_project/pages/explore/expolre_screen.dart';

class BeveragesScreen extends StatelessWidget {
   BeveragesScreen({super.key});
LocalData localData = LocalData();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: (){
                  Get.off(ExploreScreen());
                },
                child: Container(
                    width: 40,
                    height: 40,


                    child: Icon(Icons.arrow_back_ios_sharp))),
            Text(
              "Beverages",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
            InkWell(
                onTap: (){
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
                                "Add",
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
                              itemCount: localData.dataBtnShit2.length,
                              itemBuilder: (_, int index) {
                                return TextField(
                                  decoration: InputDecoration(
                                    labelText: '${localData.dataBtnShit2[index].start}',
                                    border: OutlineInputBorder(),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 2,
                                    height: 1.5,
                                  ),
                                );

                              }),

                        ),
                        Container(
                          height: 1,
                         width: MediaQuery.of(context).size.width,
                         color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text(
                                "Image",
                                style:TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  letterSpacing: 2,
                                  height: 1.5,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                            'Add Item',
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                          onPressed: () {

                          },
                        ),
                        Card(),
                      ],
                    ),
                  );
                },
                child: CircleAvatar(

                    backgroundColor: Color(0xFF53B175),
                    child: Icon(Icons.add))),
          ],
        ),
        Card(),
        Expanded(
          child: GridView.builder(
            itemCount: localData.dataBeverager.length,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (_, int index) => Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                margin: EdgeInsets.all(1),
                width: MediaQuery.of(context).size.width * 0.44,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Color(localData.dataBeverager[index].color),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                        width: 75,
                        height: 75,
                        child: Image(
                          image: AssetImage(localData.dataBeverager[index].image),
                        )),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       textAlign: TextAlign.start,
                       localData.dataBeverager[index].title,
                       style: TextStyle(fontSize: 12),
                     ),
                     Text(
                       textAlign: TextAlign.start,
                       localData.dataBeverager[index].subTitle,
                       style: TextStyle(fontSize: 10,color: Colors.grey),),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text(
                             textAlign: TextAlign.start,
                             localData.dataBeverager[index].Price,
                             style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                           ),
                         ),
                         InkWell(
                             onTap: (){},
                             child: CircleAvatar(

                                 backgroundColor: Color(0xFF53B175),
                                 child: Icon(Icons.add))),
                       ],
                     ),
                   ],
                   ),
                 )
                  ],
                ),
              ),
            ),
          ),
        ),
      ])
      ),
    );
  }
}
