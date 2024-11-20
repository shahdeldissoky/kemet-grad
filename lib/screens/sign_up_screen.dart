import 'package:flutter/material.dart';

import '../widgets/background_decoration.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'sign_up_step_two.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration(),
        child: SizedBox.expand(
          child:  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 250,),
                  const Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'First Name',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(height: 8),
                            CustomTextField(horizontal: 5, vertical: 12),
                          ],
                        ),
                      ),
                      SizedBox(width: 16), 
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Last Name',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(height: 8),
                            CustomTextField(horizontal: 5, vertical: 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text("What's your gender? (Optional)",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  Row(
                    children: [
                      Flexible(
                        child: RadioListTile<String>(
                          activeColor: const Color(0xffFFBD67),
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    title: const Text('Female',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                    value: 'Female',
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value;
                                      });
                                    },
                                  ),
                      ),

                       Flexible(
                        child: RadioListTile<String>(
                          activeColor: const Color(0xffFFBD67),
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    title: const Text('Male',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                    value: 'Male',
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value;
                                      });
                                    },
                                  ),
                      ),

                       Flexible(
                        child: RadioListTile<String>(
                          activeColor: const Color(0xffFFBD67),
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              title: const Text('rather not say',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              value: 'gay',
                              groupValue: selectedOption,
                              onChanged: (value) {
                              setState(() {
                              selectedOption = value;
                            });
                          },
                        ),
                      ), 
                    ],
                  ),
                  
                 const Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                   const SizedBox(height: 5,),
                   const CustomTextField(horizontal: 20, vertical: 13),
                   const SizedBox(height: 10,),
                   const Text(
                    "What's your date of birth?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                   const SizedBox(height: 5,),
                   const CustomTextField(horizontal: 20, vertical: 13),
                   const SizedBox(height: 10,),
                  
                   const Text(
                    "what's your SSN?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                   const SizedBox(height: 5,),
                   const CustomTextField(horizontal: 20, vertical: 13),
                   Padding(
                    padding: const EdgeInsets.only(top:8,bottom: 20 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(color: Colors.black,height: 1,width: 95,),
                        const  SizedBox(width: 25,),
                        const Text('One last step',style: TextStyle(color: Color(0xff718096),fontWeight: FontWeight.bold),),
                        const SizedBox(width: 25,),
                        Container(color: Colors.black,height: 1,width: 95,),

                      ],
                    ),
                  ),

                  CustomButton(
  color: const Color(0xffffbd67),
  text: 'Login Info',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignUpStepTwo()),
    );
  },
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



