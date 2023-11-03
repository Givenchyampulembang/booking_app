import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class AppInputText extends StatelessWidget {
  const AppInputText({Key? key, this.controller, required this.label})
      : super(key: key);

  final TextEditingController? controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimen.h40,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
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
