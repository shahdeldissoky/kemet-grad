import 'package:flutter/material.dart';
import 'package:kemet_grad/widgets/custom_button.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(children: [
          Text('Password changed',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
          ),
          SizedBox(height: 10,),
          Text(
            'your password has been changed succefully',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: 20,),
          CustomButton(color: Color(0xffFFBD67), text: 'Back to login', horizontal: 120, vertical: 15)
        ],),
      ),
    );
  }
}