import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150,),
            Text('Reset password',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
            ),
            SizedBox(height: 10,),
            Text('Please type somthing you will remember',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            ),
            SizedBox(height: 35,),
            Text('New password'),
            SizedBox(height: 10,),
            CustomTextField(
              horizontal: 30, vertical: 18,
              text: 'must be 8 charachters',
              suffixIcon: Icon(Icons.visibility_outlined),
              ),
            SizedBox(height: 20,),
            Text('Confirm new password'),
            CustomTextField(
              horizontal: 30, vertical: 18,
              text: 'repeat password',
              suffixIcon: Icon(Icons.visibility_outlined),
              ),
            SizedBox(height: 40,),
            Center(
              child: CustomButton(
                vertical: 18,
                horizontal: 120,
                color: Color(0xffFFBD67), text: 'Reset password',
              
              ),
            ),
              
          ],
        ),
      ),
      
    );
  }
}