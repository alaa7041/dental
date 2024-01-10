import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback onPress;

  const CustomAppBar({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: IconButton(
        onPressed: onPress,
        icon: Icon(Icons.arrow_back_ios),
        color: Colors.black,
      ),
    );
  }
}
