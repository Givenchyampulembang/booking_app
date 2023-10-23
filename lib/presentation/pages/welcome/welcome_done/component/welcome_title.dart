import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../config/theme/app_font.dart';

class WelcomeDoneTitle extends StatelessWidget {
  const WelcomeDoneTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w32),
      child: Column(
        children: [
          Text(
            "Find Your Roomie",
            style: AppFont.h4,
          ),
          8.0.height,
          Text(
            "We've helped millions across the nation find their perfect match... and you're next!",
            style: AppFont.paragraphSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
