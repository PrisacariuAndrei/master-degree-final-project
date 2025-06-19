import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<RegisterButtonPressed>(_onRegisterButtonPressed);
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  Future<void> _onRegisterButtonPressed(
    RegisterButtonPressed event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      Map<String, String> studentData = {
        "name": event.name,
        "email": event.email,
        "phone": event.phone,
        "student_id": event.studentID,
        "password": event.password,
      };

      await FirebaseDatabase.instance
          .ref()
          .child('students')
          .push()
          .set(studentData);

      emit(state.copyWith(status: AuthStatus.success));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  Future<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading));

    final snapshot = await FirebaseDatabase.instance
        .ref()
        .child('students')
        .orderByChild('student_id')
        .equalTo(event.studentID)
        .once();

    final data = snapshot.snapshot.value;
    if (data != null && data is Map) {
      final user = data.values.first;
      if (user['password'] == event.password) {
        emit(state.copyWith(status: AuthStatus.success));
      } else {
        emit(
          state.copyWith(
            status: AuthStatus.error,
            error: 'Parolă incorectă.',
          ),
        );
      }
    } else {
      emit(
        state.copyWith(
          status: AuthStatus.error,
          error: 'ID student inexistent.',
        ),
      );
    }
  }
}
