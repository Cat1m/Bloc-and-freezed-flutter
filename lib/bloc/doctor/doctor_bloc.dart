import 'package:api_test/model/doctor_model.dart';
import 'package:api_test/repository/bacsi_repositories.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final BacSiRepository _bacsiRepository;
  DoctorBloc(this._bacsiRepository) : super(const _Loading()) {
    on<_FetchDoctor>(_fetchPostAPI);
  }
  Future<void> _fetchPostAPI(
      _FetchDoctor event, Emitter<DoctorState> emit) async {
    await _bacsiRepository.getUsers().then((value) {
      emit(DoctorState.loaded(doctors: value));
    }).onError((error, stackTrace) {
      emit(DoctorState.loadError(messenge: error.toString()));
    });
  }
}
