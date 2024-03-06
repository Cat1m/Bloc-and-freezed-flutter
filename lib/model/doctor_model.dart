// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_model.freezed.dart';
part 'doctor_model.g.dart';

@freezed
class Doctor with _$Doctor {
  const factory Doctor({
    required String Ma,
    required String TenBacSi,
    required String HinhAnh,
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

@freezed
class DoctorResponse with _$DoctorResponse {
  const factory DoctorResponse({
    required String Status,
    required String Message,
    required List<Doctor> Data,
  }) = _DoctorResponse;

  factory DoctorResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorResponseFromJson(json);
}
