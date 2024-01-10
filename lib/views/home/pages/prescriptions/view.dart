import 'package:dental/core/design/app_background.dart';
import 'package:dental/core/design/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrescriptionsView extends StatelessWidget {
  const PrescriptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              AppBackground(),
              ListView(
                children: [
                  CustomAppBar(title: "روشتة العلاج", onPress:(){}),
                  Container(
                    margin: EdgeInsetsDirectional.all(20),
                    width: 390,
                    height: 650,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.5),
                    ),
                    child: Text("lolo"),
                  ),
                ],
              ),
            ],
      ),
    ));
  }
}
