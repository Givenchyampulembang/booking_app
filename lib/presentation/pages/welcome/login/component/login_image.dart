import 'package:booking_app/data/src/img_string.dart';
import 'package:flutter/material.dart';

class LoginImage extends StatefulWidget {
  const LoginImage({super.key});

  @override
  State<LoginImage> createState() => _LoginImageState();
}

class _LoginImageState extends State<LoginImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(ImgString.cittaPlants2);
  }
}
