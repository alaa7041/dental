import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/design/app_background.dart';
import '../../../../core/design/app_bar.dart';

class PatientFilesView extends StatelessWidget {
  const PatientFilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              AppBackground(),
              ListView(
                children: [
                  CustomAppBar(title: "ملفات المريض", onPress:(){}),
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
