import 'package:dio/dio.dart';
import 'package:api_test/model/user_model.dart';
import 'dart:io';

class UserRepository {
  String endpoint = 'https://reqres.in/api/users?page=2';
  final Dio _dio = Dio();

  Future<List<UserModel>> getUsers() async {
    try {
      final response = await _dio.get(endpoint);
      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final userList = data['data'] as List;
        return userList.map((e) => UserModel.fromJson(e)).toList();
      } else {
        throw Exception(response.statusMessage);
      }
    } on SocketException {
      throw Exception('Không có kết nối mạng');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
