import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kemet_grad/constants/constants.dart';
import 'package:kemet_grad/helper/api.dart';
import 'package:kemet_grad/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*
class Login {
  Future<void> login({required dynamic email,required dynamic password})async
  {
    Map<String,dynamic> data = await Api().post(
    url: '$baseurl/Api/Accounts/login', 
    body: jsonEncode({
      'email':email,
      'password':password,
    },) 
    );
    
  }
}*/

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginWithMail() async{
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    try {
      var url = Uri.parse(ApiEndPoints.baseurl + ApiEndPoints.authEndPoints.login);
      Map body= {
        'email': emailController.text.trim(),
        'password' : passwordController.text.trim(),
      };
      http.Response response = 
           await http.post(url, body:jsonEncode(body),headers: headers);
      
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        var token = json['token'];
        final SharedPreferences? prefs = await _prefs;
        await prefs?.setString('token', token);
        emailController.clear();
        passwordController.clear();

        //go to home
        Get.off(HomeScreen());
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