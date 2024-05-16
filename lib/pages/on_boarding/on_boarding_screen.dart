import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../explore/expolre_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        body: Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image(
                  image: AssetImage("assets/images/img_2.png"),
                  fit: BoxFit.fill,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.45,
      
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/images/img_3.png"),
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(height: 30,),
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            "\t \tWelcome \n to our store",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )),
                      Text(
                        "Ger your groceries in as fast as one hour",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFC5BCB6),
                        ),
                      ),
                      SizedBox(height: 30,),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        splashColor: Colors.black,
                        minWidth: MediaQuery.of(context).size.width * 0.88,
                        height: MediaQuery.of(context).size.height / 15,
                        color: Color(0xFF53B175),
                        child: Text(
                          'Get Started',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        onPressed: () {
                          Get.off( ExploreScreen());
                        },
                      ),
      
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      
      ),
    );
  }
}
