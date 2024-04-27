import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/app_images.dart';
import 'package:quiz_app/features/home/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return HomeScreen();
        }));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              AppImages.imge2,
              height: 252,
              width: 265,
            ),
          ),
          Spacer(),
          Center(
            child: JelloIn(
              child: Image.asset(
                AppImages.loge,
                height: 59,
                width: 231,
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              AppImages.imge1,
              height: 252,
              width: 265,
            ),
          ),
        ],
      ),
    );
  }
}
