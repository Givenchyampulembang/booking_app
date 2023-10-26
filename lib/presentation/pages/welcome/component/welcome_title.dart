import 'package:booking_app/config/config.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimen.w16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          24.0.height,
          Text(
            "Find the Perfect Roommate",
            style: AppFont.h3,
          ),
          Text(
            "We've helped millions across the nation find their perfect match... and you're next!",
            style: AppFont.paragraphMedium,
          ),
        ],
      ),
    );
  }
}
