// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDoctor value) fetchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDoctor value)? fetchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDoctor value)? fetchDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEventCopyWith<$Res> {
  factory $DoctorEventCopyWith(
          DoctorEvent value, $Res Function(DoctorEvent) then) =
      _$DoctorEventCopyWithImpl<$Res, DoctorEvent>;
}

/// @nodoc
class _$DoctorEventCopyWithImpl<$Res, $Val extends DoctorEvent>
    implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDoctorImplCopyWith<$Res> {
  factory _$$FetchDoctorImplCopyWith(
          _$FetchDoctorImpl value, $Res Function(_$FetchDoctorImpl) then) =
      __$$FetchDoctorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDoctorImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$FetchDoctorImpl>
    implements _$$FetchDoctorImplCopyWith<$Res> {
  __$$FetchDoctorImplCopyWithImpl(
      _$FetchDoctorImpl _value, $Res Function(_$FetchDoctorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDoctorImpl implements _FetchDoctor {
  const _$FetchDoctorImpl();

  @override
  String toString() {
    return 'DoctorEvent.fetchDoctor()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDoctorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDoctor,
  }) {
    return fetchDoctor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDoctor,
  }) {
    return fetchDoctor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDoctor,
    required TResult orElse(),
  }) {
    if (fetchDoctor != null) {
      return fetchDoctor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDoctor value) fetchDoctor,
  }) {
    return fetchDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDoctor value)? fetchDoctor,
  }) {
    return fetchDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDoctor value)? fetchDoctor,
    required TResult orElse(),
  }) {
    if (fetchDoctor != null) {
      return fetchDoctor(this);
    }
    return orElse();
  }
}

abstract class _FetchDoctor implements DoctorEvent {
  const factory _FetchDoctor() = _$FetchDoctorImpl;
}

/// @nodoc
mixin _$DoctorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Doctor> doctors) loaded,
    required TResult Function(String messenge) loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Doctor> doctors)? loaded,
    TResult? Function(String messenge)? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Doctor> doctors)? loaded,
    TResult Function(String messenge)? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadError value) loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadError value)? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res, DoctorState>;
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res, $Val extends DoctorState>
    implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DoctorState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Doctor> doctors) loaded,
    required TResult Function(String messenge) loadError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Doctor> doctors)? loaded,
    TResult? Function(String messenge)? loadError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Doctor> doctors)? loaded,
    TResult Function(String messenge)? loadError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadError value) loadError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadError value)? loadError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DoctorState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Doctor> doctors});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
  }) {
    return _then(_$LoadedImpl(
      doctors: null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<Doctor> doctors})
      : _doctors = doctors;

  final List<Doctor> _doctors;
  @override
  List<Doctor> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'DoctorState.loaded(doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doctors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Doctor> doctors) loaded,
    required TResult Function(String messenge) loadError,
  }) {
    return loaded(doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Doctor> doctors)? loaded,
    TResult? Function(String messenge)? loadError,
  }) {
    return loaded?.call(doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Doctor> doctors)? loaded,
    TResult Function(String messenge)? loadError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(doctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadError value) loadError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadError value)? loadError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DoctorState {
  const factory _Loaded({required final List<Doctor> doctors}) = _$LoadedImpl;

  List<Doctor> get doctors;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadErrorImplCopyWith<$Res> {
  factory _$$LoadErrorImplCopyWith(
          _$LoadErrorImpl value, $Res Function(_$LoadErrorImpl) then) =
      __$$LoadErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messenge});
}

/// @nodoc
class __$$LoadErrorImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$LoadErrorImpl>
    implements _$$LoadErrorImplCopyWith<$Res> {
  __$$LoadErrorImplCopyWithImpl(
      _$LoadErrorImpl _value, $Res Function(_$LoadErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messenge = null,
  }) {
    return _then(_$LoadErrorImpl(
      messenge: null == messenge
          ? _value.messenge
          : messenge // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadErrorImpl implements _LoadError {
  const _$LoadErrorImpl({required this.messenge});

  @override
  final String messenge;

  @override
  String toString() {
    return 'DoctorState.loadError(messenge: $messenge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadErrorImpl &&
            (identical(other.messenge, messenge) ||
                other.messenge == messenge));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messenge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadErrorImplCopyWith<_$LoadErrorImpl> get copyWith =>
      __$$LoadErrorImplCopyWithImpl<_$LoadErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Doctor> doctors) loaded,
    required TResult Function(String messenge) loadError,
  }) {
    return loadError(messenge);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Doctor> doctors)? loaded,
    TResult? Function(String messenge)? loadError,
  }) {
    return loadError?.call(messenge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Doctor> doctors)? loaded,
    TResult Function(String messenge)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(messenge);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadError value) loadError,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadError value)? loadError,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class _LoadError implements DoctorState {
  const factory _LoadError({required final String messenge}) = _$LoadErrorImpl;

  String get messenge;
  @JsonKey(ignore: true)
  _$$LoadErrorImplCopyWith<_$LoadErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
