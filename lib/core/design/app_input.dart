import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? isText;
  final String hintText;
  final FormFieldValidator<String?>? validator;

  const AppInput({super.key,
    this.controller,
    this.isText,
    this.validator,
    required this.hintText,

  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        validator: widget.validator,
        keyboardType:widget.isText,
        decoration: InputDecoration(
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
