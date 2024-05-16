import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/pages/explore/expolre_screen.dart';

class OrderAcceptScreen extends StatelessWidget {
  const OrderAcceptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F4F2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Container(
                width: 270,
                height: 270,
                child: Image(image: AssetImage("assets/images/img_4.png"))),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            textAlign: TextAlign.center,
            "Your Order has bee\n accepted",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            textAlign: TextAlign.center,
            "Your items has been placcd and is on\n it’s way to being processed",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Spacer(),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            splashColor: Colors.black,
            minWidth: MediaQuery.of(context).size.width * 0.88,
            height: MediaQuery.of(context).size.height / 15,
            color: Color(0xFF53B175),
            child: Text(
              'Track Order',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            onPressed: () {},
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            splashColor: Colors.black,
            minWidth: MediaQuery.of(context).size.width * 0.88,
            height: MediaQuery.of(context).size.height / 15,
            color: Color(0xFFF2F4F2),
            child: Text(
              'Back to home',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            onPressed: () {
              Get.to(ExploreScreen());
            },
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
