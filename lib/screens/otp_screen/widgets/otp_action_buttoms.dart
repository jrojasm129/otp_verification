import 'package:flutter/material.dart';

import '../../../constants.dart';

class OTPActionButtoms extends StatelessWidget {
  const OTPActionButtoms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(
        child: OutlinedButton(
          child: const Text('Resend'),
          onPressed: (){}, 
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            side: BorderSide(width: 2, color: primaryColor)
          ),
        ),
      ),
    
      const SizedBox(width: 12),
    
      Expanded(
        child: OutlinedButton(
          child: const Text('Confirm', style: TextStyle(color: Colors.white)),
          onPressed: (){}, 
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            backgroundColor: primaryColor.withOpacity(.5) 
          ),
        ),
      )
    
    ]);
  }
}