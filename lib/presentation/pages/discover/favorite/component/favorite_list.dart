import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
          ListView.builder(itemBuilder: (c, i) => _listItem(), itemCount: 10),
    );
  }

  Widget _listItem() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppDimen.w16,
      ),
      child: Card(
        color: AppColor.ink06,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.all(AppDimen.w16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Given",
                    style: AppFont.paragraphMediumBold,
                  ),
                  Text(
                    "Jayapura, Indonesia",
                    style: AppFont.paragraphSmall.copyWith(
                      color: AppColor.ink02,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.ink02,
                size: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
