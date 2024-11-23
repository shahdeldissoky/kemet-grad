/*import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> post({required String url, @required dynamic body,@required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization':'Bearer $token',
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Accept-Encoding': 'gzip, deflate, br'
      });
      
    }
    http.Response response = await http.post(
        Uri.parse(
          url,
        ),
        body: jsonEncode(body),
        headers: headers,
        );
        Map<String, String> data = jsonDecode(response.body);
        return data;
  }
}
*/