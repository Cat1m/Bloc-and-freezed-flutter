import 'package:api_test/model/user_model.dart';
import 'package:api_test/repository/repositories.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(const _Loading()) {
    on<UserEvent>((event, emit) async {
      emit(const UserState.loading());
      print("chuyển state");
      try {
        final users = await _userRepository.getUsers();
        await Future.delayed(const Duration(seconds: 2));
        emit(UserState.loaded(users: users));
      } catch (e) {
        emit(UserState.loadError(messenge: e.toString()));
      }
    });
  }
}
