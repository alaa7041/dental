import 'package:dental/core/design/app_bar.dart';
import 'package:dental/core/design/app_image.dart';
import 'package:dental/core/design/app_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/design/app_background.dart';

class AddPatientView extends StatelessWidget {
  const AddPatientView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          AppBackground(),
          ListView(
            children: [
              CustomAppBar(title: "اضافة مريض", onPress: () {}),
              Container(
                margin: EdgeInsetsDirectional.all(15),
                width: 410,
                height: 950,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AppImage(
                          path: "assets/icons/chat_search_light.png",
                          fit: BoxFit.fill,
                          height: 50,
                          width: 50,
                        ),
                        Text(
                          "بيانات اساسية",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    AppInput(hintText: "رقم الملف"),
                    AppInput(hintText: "اسم المريض"),
                    AppInput(hintText: "رقم التلفون"),
                    AppInput(hintText: "العنوان"),
                    AppInput(hintText: "تاريخ الميلاد"),
                    AppInput(hintText: "النوع"),
                    AppInput(hintText: "المهنه"),
                    AppInput(hintText: "الجنسيه"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
