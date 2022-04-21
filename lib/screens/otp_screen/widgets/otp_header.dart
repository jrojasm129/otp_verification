
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class OTPHeader extends StatelessWidget {

  final Function()? onChangePhoneNumber;
  final String phoneNumber;

  const OTPHeader({
    Key? key, 
    this.onChangePhoneNumber, 
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Verification Code',
          style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white)
        ),
        const SizedBox(height: 8),
        Text('We have send the code verification to',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: const Color(0xff4A4950))
        ),
        const SizedBox(height: 8),
        Text.rich(TextSpan(
          text: phoneNumber,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
          children: [
            TextSpan(
             text: '  Change phone number?', 
             style: Theme.of(context).textTheme.subtitle1!.copyWith(
               color: primaryColor,
               fontWeight: FontWeight.w600
             ),
             recognizer: TapGestureRecognizer()..onTap = onChangePhoneNumber
            )
          ]
        ))
      ],
    );
  }
}
