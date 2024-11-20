import 'package:flutter/material.dart';

import '../widgets/background_decoration.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignUpStepTwo extends StatelessWidget {
  const SignUpStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration(), // Ensure background decoration is applied
        child: SizedBox.expand( // Make sure the container covers the entire screen
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 130),
                const Text(
                  'One Step Away!',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 30),
                const Text('Email'),
                const SizedBox(height: 10),
                const CustomTextField(
                  horizontal: 23,
                  vertical: 20,
                  text: 'example@gmail.com',
                ),
                const SizedBox(height: 20),
                const Text('Create a password'),
                const SizedBox(height: 10),
                const CustomTextField(
                  horizontal: 23,
                  vertical: 20,
                  text: 'must be 8 characters',
                  suffixIcon: Icon(Icons.visibility_outlined),
                ),
                const SizedBox(height: 20),
                const Text('Confirm password'),
                const SizedBox(height: 10),
                const CustomTextField(
                  horizontal: 23,
                  vertical: 20,
                  text: 'repeat password',
                  suffixIcon: Icon(Icons.visibility_outlined),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      horizontal: 135,
                      vertical: 13,
                      color: const Color(0xffffbd67),
                      text: 'Log in',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpStepTwo(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
               const SizedBox(height: 25,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',style: TextStyle(color: Colors.grey,fontSize: 16),),
                  SizedBox(width: 5,),
                  Text('Log in',style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),)
                ],
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
