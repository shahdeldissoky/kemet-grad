import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kemet_grad/screens/login_screen.dart';
import 'package:kemet_grad/widgets/background_decoration.dart';
import 'package:kemet_grad/widgets/custom_button.dart';
import 'package:kemet_grad/widgets/custom_text_field.dart';

import '../auth/forget_password.dart';
import 'verification_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
   ForgotPasswordScreen({super.key});

final ForgetPasswordController forgetPasswordController = Get.put(ForgetPasswordController()); 

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
            
                     CustomTextField(
                      text: 'Enter your email address',
                      horizontal: 13,
                      vertical: 20,
                      controller: forgetPasswordController.emailController,
                      ),
            
                    const SizedBox(height: 40,),
            
                     CustomButton(
                      horizontal: 135,
                      vertical: 13,
                      color: const Color(0xffFFBD67), text: 'Send code',
                      onTap: (){
                        forgetPasswordController.forgetWithMail();
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
                          MaterialPageRoute(builder: (context)=>const LoginScreen()),
                        );
                          },
                          child:const Text('Log in',style: TextStyle(fontWeight: FontWeight.bold),),
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