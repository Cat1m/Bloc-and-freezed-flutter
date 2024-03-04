import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
//import 'package:json_annotation/json_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String email,
    required String first_name,
    required String last_name,
    required String avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
