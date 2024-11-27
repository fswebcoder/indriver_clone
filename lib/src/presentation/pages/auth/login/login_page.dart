import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone/src/presentation/pages/auth/login/bloc/login_bloc.dart';
import 'package:indriver_clone/src/presentation/pages/auth/login/bloc/login_state_bloc.dart';
import 'package:indriver_clone/src/presentation/pages/auth/login/login_content.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc? _loginBloc;

  @override
  Widget build(BuildContext context) {
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    return Scaffold(
      body: BlocBuilder<LoginBloc, LoginStateBloc>(builder: (context, state) {
        return LoginContent(_loginBloc);
      }),
    );
  }
}
