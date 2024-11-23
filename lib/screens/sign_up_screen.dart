import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kemet_grad/auth/registeration.dart';
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
  String? selectedDate;
  final RegisterationController controller = Get.put(RegisterationController());

  Future<void> _selectDate(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2000), // Default date
      firstDate: DateTime(1900), // Earliest selectable date
      lastDate: currentDate, // Latest selectable date
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
        controller.birthDateController.text = selectedDate!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration(),
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 230,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'First Name',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(height: 8),
                            CustomTextField(
                              horizontal: 5,
                              vertical: 12,
                              controller: controller.firstNameController,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Last Name',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(height: 8),
                            CustomTextField(
                              horizontal: 5,
                              vertical: 12,
                              controller: controller.lastNameController,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "What's your gender?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: RadioListTile<String>(
                          activeColor: const Color(0xffFFBD67),
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          title: const Text(
                            'Female',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
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
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          title: const Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
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
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          title: const Text(
                            'Rather not say',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          value: 'rather not say',
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    horizontal: 20,
                    vertical: 13,
                    controller: controller.phoneNumController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "What's your date of birth?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () => _selectDate(context),
                    child: AbsorbPointer(
                      child: CustomTextField(
                        horizontal: 20,
                        vertical: 13,
                        controller: controller.birthDateController,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "what's your SSN?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    horizontal: 20,
                    vertical: 13,
                    controller: controller.ssnController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "what's your nationality?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    horizontal: 20,
                    vertical: 13,
                    controller: controller.nationalityController,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.black,
                          height: 1,
                          width: 95,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          'One last step',
                          style: TextStyle(
                              color: Color(0xff718096),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          color: Colors.black,
                          height: 1,
                          width: 95,
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    color: const Color(0xffffbd67),
                    text: 'Next',
                    onTap: () {
                      if (selectedOption != null &&
                          controller.firstNameController.text.isNotEmpty &&
                          controller.lastNameController.text.isNotEmpty &&
                          controller.phoneNumController.text.isNotEmpty &&
                          controller.birthDateController.text.isNotEmpty) {
                        Get.to(() => SignUpStepTwo(), arguments: {
                          'firstName': controller.firstNameController.text,
                          'lastName': controller.lastNameController.text,
                          'phoneNumber': controller.phoneNumController.text,
                          'dateOfBirth': controller.birthDateController.text,
                          'nationality': controller.nationalityController.text,
                          'ssn': controller.ssnController.text,
                          'gender': selectedOption,
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Please fill all required fields')),
                        );
                      }
                    },
                    horizontal: 135,
                    vertical: 13,
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

