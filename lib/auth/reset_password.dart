import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:kemet_grad/screens/password_changed_screen.dart';
import 'package:kemet_grad/screens/verification_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../constants/constants.dart';

class ResetPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> resetWithMail() async{
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    try {
      final SharedPreferences? prefs = await _prefs;
      String? token = prefs?.getString('resetToken');

      var url = Uri.parse(ApiEndPoints.baseurl + ApiEndPoints.authEndPoints.resetPass);
      Map body= {
        'email': emailController.text.trim(),
        'newPassword': passwordController.text.trim(),
        'token': token,
      };
      http.Response response = 
           await http.post(url, body:jsonEncode(body),headers: headers);
      
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        var message = json['message'];
        

        Get.snackbar('Done', message, snackPosition: SnackPosition.BOTTOM);

        emailController.clear();
        passwordController.clear();
        
        Get.off(()=>const PasswordChangedScreen());
      }else{
        final json = jsonDecode(response.body);
        var message = json['message'];
        print(message);

        Get.snackbar('Error', message, snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.back();
      showDialog(
        context: Get.context!,
       builder: (context){
        return SimpleDialog(
          title: const Text('error'),
          contentPadding:const EdgeInsets.all(20),
          children: [Text(e.toString())],
        );
       });
    }
  }
}