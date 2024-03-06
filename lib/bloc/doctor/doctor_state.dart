part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState {
  const factory DoctorState.loading() = _Loading;
  const factory DoctorState.loaded({
    required List<Doctor> doctors,
  }) = _Loaded;
  const factory DoctorState.loadError({
    required String messenge,
  }) = _LoadError;
}
