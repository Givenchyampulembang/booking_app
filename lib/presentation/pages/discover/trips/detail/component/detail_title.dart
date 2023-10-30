import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/discover/trips/detail/detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<DetailCubit>(context);
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimen.w16,
        right: AppDimen.w16,
        top: AppDimen.h31,
        bottom: AppDimen.h8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headerText1(),
          Text(
            "Hey you, looking for a roommate? We've helped millions across the nation find their perfect match...and you're next! Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next!",
            style: AppFont.paragraphMedium.copyWith(
              color: AppColor.ink02,
            ),
          ),
        ],
      ),
    );
  }

  Widget _headerText1() {
    return Padding(
      padding: EdgeInsets.only(
        top: AppDimen.h31,
        right: AppDimen.w16,
      ),
      child: Row(
        children: [
          Text('John’s Place', style: AppFont.h2),
        ],
      ),
    );
  }
}
