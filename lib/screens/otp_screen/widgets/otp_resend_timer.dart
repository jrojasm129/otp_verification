import 'package:flutter/material.dart';
import 'package:otp_verification/constants.dart';

class OTPResendTimer extends StatelessWidget {
  const OTPResendTimer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
     alignment: Alignment.center,
     child: Text.rich(TextSpan(
       text: 'Resend code after  ',
       style: Theme.of(context).textTheme.bodyText1!.copyWith(color: const Color(0xff4A4950)),
       children: [TextSpan(
         text: '1:35',
         style: Theme.of(context).textTheme.bodyText1!.copyWith(color: primaryColor, fontWeight: FontWeight.bold)
       )]
     )),
              );
  }
}