import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:kemet_grad/screens/reset_password_screen.dart';
import 'package:kemet_grad/screens/verification_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../constants/constants.dart';

class OtpController extends GetxController {
  TextEditingController otpTextController = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> oTP({required String otpCode}) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    try {
      final SharedPreferences? prefs = await _prefs;
      String? data = prefs?.getString('data'); // Retrieve stored 'data'

      var url = Uri.parse(
          ApiEndPoints.baseurl + ApiEndPoints.authEndPoints.verifyOTP);
      Map body = {
        'otp': otpCode.trim(),
        'userId': data,
      };

    
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

    
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);

        var resetToken = json['resetToken'];

         if (resetToken == null) {

        return;
      }

        final SharedPreferences? prefs = await _prefs;
        await prefs?.setString('resetToken', resetToken);

    

        Get.off(() => const ResetPasswordScreen());
      } else {
        final json = jsonDecode(response.body);
        var message = json['message'];
        print(message);

        Get.snackbar('Error', message, snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: const Text('error'),
              contentPadding: const EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }
}
