import 'package:flutter/material.dart';
import 'package:kemet_grad/screens/login_screen.dart';
import 'package:kemet_grad/widgets/background_decoration.dart';
import 'package:kemet_grad/widgets/custom_button.dart';
import 'package:kemet_grad/widgets/custom_text_field.dart';

import 'verification_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration(),
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 150,),
                  const Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w900
                    ),
                    ),
                  
                    const SizedBox(height: 10,),
                  
                    const Text(
                      'Dont worry! It happens. Please enter the email associated with your account.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  
                    const SizedBox(height: 40,),
            
                    const Text('Email address'),
            
                    const SizedBox(height: 5,),
            
                    const CustomTextField(
                      text: 'Enter your email address',
                      horizontal: 13,
                      vertical: 20,
                      ),
            
                    const SizedBox(height: 40,),
            
                     CustomButton(
                      color: const Color(0xffFFBD67), text: 'Send code',
                      onTap: (){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerificationScreen(),
                          ),
                         );
                      },
                      ),
                    
                    const SizedBox(height: 330,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Remember password?',
                        style: TextStyle(
                          color: Colors.grey,
                    
                        ),
                        ),
                        const SizedBox(width: 3,),
                        GestureDetector(
                          onTap: () {
                              Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context)=> LoginScreen()),
                        );
                          },
                          child: Text('Log in',style: TextStyle(fontWeight: FontWeight.bold),),
                          )
                      ],
                    ),
                ],
              ),
              
            ),
          ),
        ),
         
      ),
    );
  }
}