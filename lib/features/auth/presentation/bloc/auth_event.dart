part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.registerButtonPressed({
    required String name,
    required String email,
    required String phone,
    required String studentID,
    required String password,
    required String confirmedPassword,
  }) = RegisterButtonPressed;

  const factory AuthEvent.loginButtonPressed({
    required String studentID,
    required String password,
  }) = LoginButtonPressed;
}
