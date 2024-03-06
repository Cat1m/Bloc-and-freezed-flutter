import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:api_test/model/user_model.dart';

class UserRepository {
  String endpoint = 'https://reqres.in/api/users?page=2';

  Future<List<UserModel>> getUsers() async {
    try {
      Response response =
          await get(Uri.parse(endpoint)).timeout(const Duration(seconds: 10));
      if (kDebugMode) {
        print(response.statusCode.toString());
        print(response.body);
      }
      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body)['data'];
        return result.map((e) => UserModel.fromJson(e)).toList();
      }
    } on SocketException {
      await Future.delayed(const Duration(milliseconds: 1800));
      throw Exception('No Internet Connection');
    } on TimeoutException {
      throw Exception('');
    }
    throw Exception('error fetching data');
  }
}
