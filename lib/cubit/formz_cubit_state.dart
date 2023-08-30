part of 'formz_cubit_cubit.dart';

class FormzCubitState extends Equatable {
  final FormzStatus status;
  final EmailInput emailInput;
  final PasswordInput passwordInput;

  const FormzCubitState({
    this.status = FormzStatus.pure,
    this.emailInput = const EmailInput.pure(),
    this.passwordInput = const PasswordInput.pure(),
  });

  @override
  List<Object> get props => [emailInput, passwordInput, status];

  FormzCubitState copyWith({
    FormzStatus? status,
    EmailInput? emailInput,
    PasswordInput? passwordInput,
  }) {
    return FormzCubitState(
      status: status ?? this.status,
      emailInput: emailInput ?? this.emailInput,
      passwordInput: passwordInput ?? this.passwordInput,
    );
  }
}
