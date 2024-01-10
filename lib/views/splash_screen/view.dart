import 'package:dental/core/design/app_button.dart';
import 'package:dental/core/design/app_image.dart';
import 'package:dental/core/logic/helper_methods.dart';
import 'package:dental/views/categories/view.dart';
import 'package:flutter/material.dart';
import '../../core/design/app_background.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          AppBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppImage(
                  path: "assets/images/splash_img.png",
                  fit: BoxFit.fill,
                  height: 250,
                  width: 250,
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "د. أحمد مجدي",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                AppButton(
                    text: "بدء",
                    onPress: () {
                      navigateTo(const CategoriesView());
                      setState(() {});
                    }),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
