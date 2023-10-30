import 'package:booking_app/data/src/img_string.dart';
import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImgString.abstract);
  }
}
