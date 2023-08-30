import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/formz_cubit_cubit.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Form')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EmailField(),
              // SizedBox(height: 16),
              // PasswordField(),
              // SizedBox(height: 24),
              // SubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormzCubitCubit, FormzCubitState>(
      builder: (context, state) {
        return TextField(
          onChanged: (value) {
            print('Valor recibido en email field ${value}');
            context.read<FormzCubitCubit>().emailChanged(value);
          },
          decoration: InputDecoration(
            labelText: 'email',
            errorText:
                state.emailInput.invalid ? 'Username cannot be empty' : null,
          ),
        );
      },
    );
  }
}
