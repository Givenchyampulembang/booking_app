import 'package:booking_app/presentation/pages/discover/discover_cubit.dart';
import 'package:booking_app/presentation/pages/discover/discover_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({Key? key, required this.cubit}) : super(key: key);

  final DiscoverCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.0.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildItem(
              icon: Icons.location_on_sharp,
              title: 'Trips',
              isSelected: cubit.state.selectedIndex == 0,
              onTap: () {
                cubit.changeIndex(0);
              }),
          _buildItem(
              icon: Icons.favorite,
              title: 'Favorite',
              isSelected: cubit.state.selectedIndex == 1,
              onTap: () {
                cubit.changeIndex(1);
              }),
          _buildItem(
              icon: Icons.settings,
              title: 'Settings',
              isSelected: cubit.state.selectedIndex == 2,
              onTap: () {
                cubit.changeIndex(2);
              }),
        ],
      ),
    );
  }
}

Widget _buildItem({
  required GestureTapCallback? onTap,
  required IconData icon,
  required String title,
  bool isSelected = false,
}) {
  return BlocBuilder<DiscoverCubit, DiscoverState>(
    builder: (context, state) {
      return GestureDetector(
        onTap: () {
          onTap!();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.black : Colors.grey,
            ),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      );
    },
  );
}
