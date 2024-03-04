part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _Loading;
  const factory UserState.loaded({
    required List<UserModel> users,
  }) = _Loaded;
  const factory UserState.loadError({
    required String messenge,
  }) = _LoadError;
}

//tại sao lại là factory ??
// việc để cho gen code có những nguy cơ gì?