import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 200,),
              Text('Reset password',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w800,
              ),
              ),
              SizedBox(height: 20,),
              Text('Please type somthing you will remember',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
              ),
              SizedBox(height: 50,),
              Text('New password'),
              SizedBox(height: 10,),
              CustomTextField(
                horizontal: 30, vertical: 15,
                text: 'must be 8 charachters',
                suffixIcon: Icon(Icons.visibility_outlined),
                ),
              SizedBox(height: 20,),
              Text('Confirm new password'),
              CustomTextField(
                horizontal: 30, vertical: 15,
                text: 'repeat password',
                suffixIcon: Icon(Icons.visibility_outlined),
                ),
              SizedBox(height: 40,),
              CustomButton(color: Color(0xffFFBD67), text: 'Reset password')

            ],
          ),
        ),
      ),
    );
  }
}