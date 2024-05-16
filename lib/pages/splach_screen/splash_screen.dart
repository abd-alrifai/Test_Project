
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../on_boarding/on_boarding_screen.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  //final CacheProviders cacheProviders = Get.put(CacheProviders());
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(OnboardingScreen() );
    });
    return Scaffold(
      backgroundColor: Color(0xFF53B175),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.33,
              width: MediaQuery.of(context).size.height * 0.33,
              child: Image(
                image: AssetImage("assets/images/img.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen {
}
