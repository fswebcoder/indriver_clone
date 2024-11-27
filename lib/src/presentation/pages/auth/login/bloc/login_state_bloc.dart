import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LoginStateBloc extends Equatable {

  final String email;
  final String password;
  final GlobalKey<FormState>? formKey;

  const LoginStateBloc({
    this.email = '',
    this.password = '',
    this.formKey,
  });


  LoginStateBloc copyWith({
    String? email,
    String? password,
    GlobalKey<FormState>? formKey,
  }) {
    return LoginStateBloc(
      email: email ?? this.email,
      password: password ?? this.password,
      formKey: formKey ?? this.formKey,
    );
  }
  
  @override
  List<Object?> get props => [email, password];
 
}