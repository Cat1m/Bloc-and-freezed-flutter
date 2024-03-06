import 'package:api_test/model/User/user_model.dart';
import 'package:api_test/repository/user_repositories.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(const _Loading()) {
    on<_LoadUser>(_fetchPostAPI);
  }

  Future<void> _fetchPostAPI(_LoadUser event, Emitter<UserState> emit) async {
    await _userRepository.getUsers().then((value) {
      emit(UserState.loaded(users: value));
    }).onError((error, stackTrace) {
      emit(UserState.loadError(messenge: error.toString()));
    });
  }
}
