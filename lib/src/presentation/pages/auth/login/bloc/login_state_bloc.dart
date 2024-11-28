import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:indriver_clone/src/presentation/utils/bloc_form_item.dart';

class LoginStateBloc extends Equatable {

  final BlocFormItem email;
  final BlocFormItem password;
  final GlobalKey<FormState>? formKey;

   LoginStateBloc({
    BlocFormItem? email,
    BlocFormItem? password,
    this.formKey,
  })  : email = email ?? BlocFormItem(error: 'Ingresa el email'),
        password = password ?? BlocFormItem(error: 'Ingresa la contraseña');


  LoginStateBloc copyWith({
    BlocFormItem? email,
    BlocFormItem? password,
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