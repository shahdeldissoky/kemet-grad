import 'package:flutter/material.dart';

import '../widgets/background_decoration.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'forgot_password_screen.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 23),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const SizedBox(height: 100,),
             const CustomTextField(text: 'Email',horizontal: 13,vertical: 13,),
             const SizedBox(height: 16),
             const CustomTextField(
              text: 'Password',
              suffixIcon: Icon(Icons.visibility_outlined),
              horizontal: 13,
              vertical: 13,
              ),
              Align(
                heightFactor: 0.8,
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> ForgotPasswordScreen()),
                    );
                  },
                  child: const Text(
                    'Forgot password ?',
                    style: TextStyle(
                      color: Colors.black,
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const CustomButton(
                horizontal: 135,
                vertical: 13,
                color: Color(0xffFFBD67),
                text: 'Sign in',
                ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:8 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(color: Colors.black,height: 1.5,width: 90,),
                        SizedBox(width: 25,),
                        const Text('New member?',style: TextStyle(color: Color(0xff718096),fontWeight: FontWeight.bold),),
                        SizedBox(width: 25,),
                        Container(color: Colors.black,height: 1.5,width: 90,)
                      ],
                    ),
                  ),
                  TextButton(
                    
                    onPressed: () {
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const SignUpScreen()),
                    );
                    },
                    child: const Text('Join us now',style: TextStyle(color: Colors.black,fontSize: 18,wordSpacing: 1,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

