import 'package:flutter/material.dart';
import 'package:kemet_grad/screens/password_changed_screen.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 150,),
            const Text('Reset password',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
            ),
            const SizedBox(height: 10,),
            const Text('Please type somthing you will remember',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            ),
            const SizedBox(height: 35,),
            const Text('New password'),
            const SizedBox(height: 10,),
            const CustomTextField(
              horizontal: 30, vertical: 18,
              text: 'must be 8 charachters',
              suffixIcon: Icon(Icons.visibility_outlined),
              ),
            const SizedBox(height: 20,),
            const Text('Confirm new password'),
            const CustomTextField(
              horizontal: 30, vertical: 18,
              text: 'repeat password',
              suffixIcon: Icon(Icons.visibility_outlined),
              ),
            const SizedBox(height: 40,),
            Center(
              child: CustomButton(
                vertical: 18,
                horizontal: 120,
                color: const Color(0xffFFBD67), text: 'Reset password',
                onTap: () {
                   Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context)=> const PasswordChangedScreen()),
                        );
                },
              ),
            ),
              
          ],
        ),
      ),
      
    );
  }
}