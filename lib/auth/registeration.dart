import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';
import '../screens/home_screen.dart';

class RegisterationController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController genderContoller = TextEditingController();
  TextEditingController phoneNumController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController ssnController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerWithMail({
  required String firstName,
  required String lastName,
  required String email,
  required String password,
  required String confirmPassword,
  required String phoneNumber,
  required String dateOfBirth,
  required String nationality,
  required String ssn,
  required String gender,
  }) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    try {
      var url =
          Uri.parse(ApiEndPoints.baseurl + ApiEndPoints.authEndPoints.login);
      Map body = {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password,
        "confirmPassword": confirmPassword,
        "phoneNumber": phoneNumber,
        "dateOfBirth": dateOfBirth,
        "nationality": nationality,
        "ssn": ssn,
        "gender": gender,
      };
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        var token = json['token'];
        final SharedPreferences? prefs = await _prefs;
        await prefs?.setString('token', token);

        emailController.clear();
        passwordController.clear();

        //go to home
        Get.off(HomeScreen());
      }else{
        throw jsonDecode(response.body)['message'] ?? 'there is an error';
      }
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title:const Text('error'),
              contentPadding:const EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }
}
