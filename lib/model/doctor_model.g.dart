// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorImpl _$$DoctorImplFromJson(Map<String, dynamic> json) => _$DoctorImpl(
      Ma: json['Ma'] as String,
      TenBacSi: json['TenBacSi'] as String,
      HinhAnh: json['HinhAnh'] as String,
    );

Map<String, dynamic> _$$DoctorImplToJson(_$DoctorImpl instance) =>
    <String, dynamic>{
      'Ma': instance.Ma,
      'TenBacSi': instance.TenBacSi,
      'HinhAnh': instance.HinhAnh,
    };

_$DoctorResponseImpl _$$DoctorResponseImplFromJson(Map<String, dynamic> json) =>
    _$DoctorResponseImpl(
      Status: json['Status'] as String,
      Message: json['Message'] as String,
      Data: (json['Data'] as List<dynamic>)
          .map((e) => Doctor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DoctorResponseImplToJson(
        _$DoctorResponseImpl instance) =>
    <String, dynamic>{
      'Status': instance.Status,
      'Message': instance.Message,
      'Data': instance.Data,
    };
