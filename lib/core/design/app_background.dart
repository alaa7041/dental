import 'package:dental/core/design/app_bar.dart';
import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffE5D4FF),
              Color(0xffDCBFFF),
              Color(0xff8EACCD),
              Color(0xffB0DAFF),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),

      ),
    );
  }
}
