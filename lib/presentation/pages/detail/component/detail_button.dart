import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:flutter/cupertino.dart';

class DetailButton extends StatelessWidget {
  const DetailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PrimaryButton(
            text: 'Book a Room',
            width: 180.0,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
