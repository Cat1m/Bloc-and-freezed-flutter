import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:api_test/model/doctor_model.dart';
import 'package:api_test/utils/token_header.dart';
import 'package:api_test/utils/api_urls.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class BacSiRepository {
  Map<String, String> headers = {'token': TokenHeader.getAPIKey()};

  Future<List<Doctor>> getUsers() async {
    try {
      Response response =
          await post(Uri.parse(ApiUrls.doctors), headers: headers)
              .timeout(const Duration(seconds: 10));
      if (kDebugMode) {
        print(response.statusCode.toString());
        print(response.body);
      }
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final List<dynamic> data = jsonDecode(responseData['Data']);
        print('đây là resual $data');
        return data.map((e) => Doctor.fromJson(e)).toList();
      }
    } on SocketException {
      await Future.delayed(const Duration(milliseconds: 500));
      throw Exception('No Internet Connection');
    } on TimeoutException {
      throw Exception('');
    }
    throw Exception('error fetching data');
  }
}
