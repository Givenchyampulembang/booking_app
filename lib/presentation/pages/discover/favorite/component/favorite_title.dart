import 'package:flutter/material.dart';

import '../../../../../config/config.dart';

class FavoriteTitle extends StatelessWidget {
  const FavoriteTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimen.w16,
        right: AppDimen.w16,
        top: AppDimen.h60,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Favorite', style: AppFont.h3),
          const Expanded(
            child: SizedBox(),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: AppColor.ink02,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
            color: AppColor.ink02,
          ),
        ],
      ),
    );
  }
}
