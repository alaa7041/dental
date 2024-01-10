import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final bool isLoading;

  const AppButton(
      {super.key,
      required this.text,
      required this.onPress,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return FilledButton(onPressed: onPress, child: Text(text,style:
      TextStyle(
        color: Colors.black,
      ),));
    }
  }
}
