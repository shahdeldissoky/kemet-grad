import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kemet_grad/auth/login.dart';
import '../widgets/background_decoration.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'forgot_password_screen.dart';
import 'sign_up_screen.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

LoginController loginController = Get.put(LoginController()); 
var ialogin = false.obs;
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
              const SizedBox(
                height: 100,
              ),
              CustomTextField(
                text: 'Email',
                horizontal: 13,
                vertical: 13,
                controller: loginController.emailController,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                text: 'Password',
                suffixIcon: const Icon(Icons.visibility_outlined),
                horizontal: 13,
                vertical: 13,
                controller: loginController.passwordController,
              ),
              Align(
                heightFactor: 0.8,
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen()),
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
              CustomButton(
                horizontal: 135,
                vertical: 13,
                color: const Color(0xffFFBD67),
                text: 'Sign in',
                onTap: ()  {
                  loginController.loginWithMail();
               },
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.black,
                          height: 1.5,
                          width: 90,
                        ),
                       const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          'New member?',
                          style: TextStyle(
                              color: Color(0xff718096),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          color: Colors.black,
                          height: 1.5,
                          width: 90,
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: const Text(
                      'Join us now',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          wordSpacing: 1,
                          fontWeight: FontWeight.w400),
                    ),
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

