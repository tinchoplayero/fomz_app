import 'package:flutter/material.dart';
import 'package:fomz_app/formulario.dart';
import 'cubit/formz_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form Example',
      home: BlocProvider(
        create: (context) => FormzCubitCubit(),
        child: LoginForm(),
      ),
    );
  }
}
