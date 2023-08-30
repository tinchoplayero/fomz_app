import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fomz_app/forms_input/email.dart';
import 'package:fomz_app/forms_input/pass.dart';
import 'package:formz/formz.dart';

part 'formz_cubit_state.dart';

class FormzCubitCubit extends Cubit<FormzCubitState> {
  FormzCubitCubit() : super(FormzCubitState());

  void emailChanged(String value) {
    final email = EmailInput.dirty(value);
    emit(state.copyWith(
      emailInput: email,
      status: Formz.validate([
        email,
        state.passwordInput,
      ]),
    ));
  }

  /* 
  
  void passwordChanged(String value) {
    final password = PasswordInput.dirty(value);
    emit(state.copyWith(
      passwordInput: password,
      status: Formz.validate([state.emailInput, password]),
    ));
  }

  /// Add logInWithCredentials
  Future<void> logInWithSomething() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    print(
        'Credentials: ${state.emailInput.value} / ${state.passwordInput.value}');

    /// TODO Sent to Backend
    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }
  */
}
