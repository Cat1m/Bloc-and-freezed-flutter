// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  String get Ma => throw _privateConstructorUsedError;
  String get TenBacSi => throw _privateConstructorUsedError;
  String get HinhAnh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res, Doctor>;
  @useResult
  $Res call({String Ma, String TenBacSi, String HinhAnh});
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res, $Val extends Doctor>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Ma = null,
    Object? TenBacSi = null,
    Object? HinhAnh = null,
  }) {
    return _then(_value.copyWith(
      Ma: null == Ma
          ? _value.Ma
          : Ma // ignore: cast_nullable_to_non_nullable
              as String,
      TenBacSi: null == TenBacSi
          ? _value.TenBacSi
          : TenBacSi // ignore: cast_nullable_to_non_nullable
              as String,
      HinhAnh: null == HinhAnh
          ? _value.HinhAnh
          : HinhAnh // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorImplCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$DoctorImplCopyWith(
          _$DoctorImpl value, $Res Function(_$DoctorImpl) then) =
      __$$DoctorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String Ma, String TenBacSi, String HinhAnh});
}

/// @nodoc
class __$$DoctorImplCopyWithImpl<$Res>
    extends _$DoctorCopyWithImpl<$Res, _$DoctorImpl>
    implements _$$DoctorImplCopyWith<$Res> {
  __$$DoctorImplCopyWithImpl(
      _$DoctorImpl _value, $Res Function(_$DoctorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Ma = null,
    Object? TenBacSi = null,
    Object? HinhAnh = null,
  }) {
    return _then(_$DoctorImpl(
      Ma: null == Ma
          ? _value.Ma
          : Ma // ignore: cast_nullable_to_non_nullable
              as String,
      TenBacSi: null == TenBacSi
          ? _value.TenBacSi
          : TenBacSi // ignore: cast_nullable_to_non_nullable
              as String,
      HinhAnh: null == HinhAnh
          ? _value.HinhAnh
          : HinhAnh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorImpl implements _Doctor {
  const _$DoctorImpl(
      {required this.Ma, required this.TenBacSi, required this.HinhAnh});

  factory _$DoctorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorImplFromJson(json);

  @override
  final String Ma;
  @override
  final String TenBacSi;
  @override
  final String HinhAnh;

  @override
  String toString() {
    return 'Doctor(Ma: $Ma, TenBacSi: $TenBacSi, HinhAnh: $HinhAnh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorImpl &&
            (identical(other.Ma, Ma) || other.Ma == Ma) &&
            (identical(other.TenBacSi, TenBacSi) ||
                other.TenBacSi == TenBacSi) &&
            (identical(other.HinhAnh, HinhAnh) || other.HinhAnh == HinhAnh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Ma, TenBacSi, HinhAnh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      __$$DoctorImplCopyWithImpl<_$DoctorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorImplToJson(
      this,
    );
  }
}

abstract class _Doctor implements Doctor {
  const factory _Doctor(
      {required final String Ma,
      required final String TenBacSi,
      required final String HinhAnh}) = _$DoctorImpl;

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$DoctorImpl.fromJson;

  @override
  String get Ma;
  @override
  String get TenBacSi;
  @override
  String get HinhAnh;
  @override
  @JsonKey(ignore: true)
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoctorResponse _$DoctorResponseFromJson(Map<String, dynamic> json) {
  return _DoctorResponse.fromJson(json);
}

/// @nodoc
mixin _$DoctorResponse {
  String get Status => throw _privateConstructorUsedError;
  String get Message => throw _privateConstructorUsedError;
  List<Doctor> get Data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorResponseCopyWith<DoctorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorResponseCopyWith<$Res> {
  factory $DoctorResponseCopyWith(
          DoctorResponse value, $Res Function(DoctorResponse) then) =
      _$DoctorResponseCopyWithImpl<$Res, DoctorResponse>;
  @useResult
  $Res call({String Status, String Message, List<Doctor> Data});
}

/// @nodoc
class _$DoctorResponseCopyWithImpl<$Res, $Val extends DoctorResponse>
    implements $DoctorResponseCopyWith<$Res> {
  _$DoctorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Status = null,
    Object? Message = null,
    Object? Data = null,
  }) {
    return _then(_value.copyWith(
      Status: null == Status
          ? _value.Status
          : Status // ignore: cast_nullable_to_non_nullable
              as String,
      Message: null == Message
          ? _value.Message
          : Message // ignore: cast_nullable_to_non_nullable
              as String,
      Data: null == Data
          ? _value.Data
          : Data // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorResponseImplCopyWith<$Res>
    implements $DoctorResponseCopyWith<$Res> {
  factory _$$DoctorResponseImplCopyWith(_$DoctorResponseImpl value,
          $Res Function(_$DoctorResponseImpl) then) =
      __$$DoctorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String Status, String Message, List<Doctor> Data});
}

/// @nodoc
class __$$DoctorResponseImplCopyWithImpl<$Res>
    extends _$DoctorResponseCopyWithImpl<$Res, _$DoctorResponseImpl>
    implements _$$DoctorResponseImplCopyWith<$Res> {
  __$$DoctorResponseImplCopyWithImpl(
      _$DoctorResponseImpl _value, $Res Function(_$DoctorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Status = null,
    Object? Message = null,
    Object? Data = null,
  }) {
    return _then(_$DoctorResponseImpl(
      Status: null == Status
          ? _value.Status
          : Status // ignore: cast_nullable_to_non_nullable
              as String,
      Message: null == Message
          ? _value.Message
          : Message // ignore: cast_nullable_to_non_nullable
              as String,
      Data: null == Data
          ? _value._Data
          : Data // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorResponseImpl implements _DoctorResponse {
  const _$DoctorResponseImpl(
      {required this.Status,
      required this.Message,
      required final List<Doctor> Data})
      : _Data = Data;

  factory _$DoctorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorResponseImplFromJson(json);

  @override
  final String Status;
  @override
  final String Message;
  final List<Doctor> _Data;
  @override
  List<Doctor> get Data {
    if (_Data is EqualUnmodifiableListView) return _Data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Data);
  }

  @override
  String toString() {
    return 'DoctorResponse(Status: $Status, Message: $Message, Data: $Data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorResponseImpl &&
            (identical(other.Status, Status) || other.Status == Status) &&
            (identical(other.Message, Message) || other.Message == Message) &&
            const DeepCollectionEquality().equals(other._Data, _Data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, Status, Message, const DeepCollectionEquality().hash(_Data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorResponseImplCopyWith<_$DoctorResponseImpl> get copyWith =>
      __$$DoctorResponseImplCopyWithImpl<_$DoctorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorResponseImplToJson(
      this,
    );
  }
}

abstract class _DoctorResponse implements DoctorResponse {
  const factory _DoctorResponse(
      {required final String Status,
      required final String Message,
      required final List<Doctor> Data}) = _$DoctorResponseImpl;

  factory _DoctorResponse.fromJson(Map<String, dynamic> json) =
      _$DoctorResponseImpl.fromJson;

  @override
  String get Status;
  @override
  String get Message;
  @override
  List<Doctor> get Data;
  @override
  @JsonKey(ignore: true)
  _$$DoctorResponseImplCopyWith<_$DoctorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
