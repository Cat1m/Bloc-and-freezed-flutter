part of 'doctor_bloc.dart';

@freezed
class DoctorEvent with _$DoctorEvent {
  const factory DoctorEvent.fetchDoctor() = _FetchDoctor;
}
