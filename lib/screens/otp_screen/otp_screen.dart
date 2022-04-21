import 'package:flutter/material.dart';
import './widgets/otp_resend_timer.dart';

import './widgets/otp_action_buttoms.dart';
import './widgets/otp_header.dart';
import './widgets/otp_form.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, 
        backgroundColor: Colors.transparent,
        leading: const BackButton(color: Colors.white),
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(12.0),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 350),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              OTPHeader(
                phoneNumber: '+506****9250',
                onChangePhoneNumber: (){},
              ),

              const SizedBox(height: 50),
        
              const OTPForm(),

              const SizedBox(height: 20),

               const OTPResendTimer(),
              
              const SizedBox(height: 50),
        
              const OTPActionButtoms()
            ],
          ),
        ),
      ),
    );
  }
}



