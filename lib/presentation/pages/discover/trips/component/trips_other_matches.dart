import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/config/theme/app_font.dart';
import 'package:booking_app/data/model/trip/trip.dart';
import 'package:booking_app/data/src/img_string.dart';
import 'package:booking_app/presentation/pages/discover/trips/trips_cubit.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripsOtherMatches extends StatelessWidget {
  const TripsOtherMatches({Key? key, required this.otherMatches})
      : super(key: key);
  final List<Trip> otherMatches;
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(),
          _roomiesList(context),
        ],
      ),
    );
  }

  Widget _roomiesList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (c, i) => _roomiesItem(context, otherMatches[i]),
        itemCount: otherMatches.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _roomiesItem(BuildContext context, Trip trip) {
    return Container(
      height: 72.0.h,
      margin: EdgeInsets.only(
        left: AppDimen.w16,
        top: AppDimen.h24,
        bottom: AppDimen.h16,
      ),
      padding: EdgeInsets.only(
        left: AppDimen.w16,
        right: AppDimen.w16,
        top: AppDimen.h49,
        bottom: AppDimen.h8,
      ),
      width: (MediaQuery.of(context).size.width / 2) - AppDimen.w38,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(
          AppDimen.w16,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(ImgString.cittaPlants),
          ),
          37.0.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                trip.name ?? '',
                style: AppFont.paragraphLargeBold,
              ),
              Text(
                '\$${trip.price ?? 0}',
                style: AppFont.paragraphSmall,
              ),
            ],
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
      child: Text('Other Matches', style: AppFont.h3),
    );
  }
}
