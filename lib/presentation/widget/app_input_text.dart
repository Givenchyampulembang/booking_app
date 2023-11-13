import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class AppInputText extends StatefulWidget {
  final TextEditingController? controller;
  final String label;
  const AppInputText({Key? key, this.controller, required this.label})
      : super(key: key);

  @override
  State<AppInputText> createState() => _AppInputTextState();
}

class _AppInputTextState extends State<AppInputText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimen.h40,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: AppFont.componentMedium,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppDimen.h16,
          ),
        ),
      ),
    );
  }
}
