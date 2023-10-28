import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/data/src/img_string.dart';
import 'package:booking_app/presentation/pages/discover/trips/trips_cubit.dart';
import 'package:booking_app/utils/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/app_font.dart';

class TripsYourRoomies extends StatelessWidget {
  const TripsYourRoomies({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.0.height,
          _header(),
          16.0.height,
          _roomiesList(),
        ],
      ),
    );
  }

  Widget _roomiesList() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (c, i) => _roomiesItem(),
        itemCount: 3,
      ),
    );
  }

  Widget _roomiesItem() {
    return Container(
      height: 72.0.h,
      margin: EdgeInsets.only(
        bottom: AppDimen.w16,
        left: AppDimen.w16,
        right: AppDimen.w16,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.w16,
        vertical: AppDimen.h8,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(
          AppDimen.w8,
        ),
      ),
      child: Row(
        children: [
          _avatar(),
          8.0.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Given',
                  style: AppFont.paragraphMediumBold,
                ),
                Text(
                  'Jakarta, Indonesia',
                  style: AppFont.paragraphSmall,
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }

  Widget _avatar() {
    return SizedBox(
      width: 56.w,
      height: 56.w,
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 28.w,
              backgroundColor: AppColor.ink03,
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 26.w,
              backgroundColor: AppColor.ink06,
              backgroundImage: AssetImage(ImgString.backdrop),
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimen.w16,
        right: AppDimen.w16,
        top: AppDimen.h24,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Your Roomies', style: AppFont.h3),
          const Expanded(child: SizedBox()),
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
