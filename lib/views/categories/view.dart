import 'package:dental/core/design/app_bar.dart';
import 'package:dental/core/design/app_image.dart';
import 'package:dental/core/design/app_input.dart';
import 'package:dental/core/logic/helper_methods.dart';
import 'package:dental/views/splash_screen/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/design/app_background.dart';
import '../home/view.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              AppBackground(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _Category(
                    onPress: () {
                      navigateTo(const HomeView());
                    },
                    text: "اضافة مريض ",
                    icon: "assets/icons/user_add.png",
                  ),
                  SizedBox(height: 30,),
                  _Category(
                    onPress: () {},
                    text: "المواعيد",
                    icon: "assets/icons/time_progress_light.png",
                  ),
                  SizedBox(height: 30,),
                  _Category(
                    onPress: () {},
                    text: "ملفات المرضى",
                    icon: "assets/icons/file_dock_light.png",
                  ),
                  SizedBox(height: 30,),
                  _Category(
                    onPress: () {},
                    text: "روشتة علاج",
                    icon: "assets/icons/paper_light.png",
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class _Category extends StatefulWidget {
  final VoidCallback onPress;
  final String icon, text;

  const _Category({super.key, required this.onPress, this.icon = "", required
  this.text});

  @override
  State<_Category> createState() => _CategoryState();
}

class _CategoryState extends State<_Category> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 335,
        height: 60,
        child: FilledButton(
          onPressed: widget.onPress,
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              AppImage(
                path: widget.icon,
                fit: BoxFit.fill,
                height: 35,
                width: 35,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
