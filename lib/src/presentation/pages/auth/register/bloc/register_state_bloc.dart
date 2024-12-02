

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:indriver_clone/src/presentation/utils/bloc_form_item.dart';

class RegisterStateBloc  extends Equatable {

  final BlocFormItem name;
  final BlocFormItem lastname;
  final BlocFormItem email;
  final BlocFormItem phone;
  final BlocFormItem password;
  final BlocFormItem confirmPassword;
  final GlobalKey<FormState>? formKey;

  RegisterStateBloc({
    BlocFormItem? name,
    BlocFormItem? lastname,
    BlocFormItem? email,
    BlocFormItem? phone,
    BlocFormItem? password,
    BlocFormItem? confirmPassword,
    this.formKey ,
  }) : name = name ?? BlocFormItem(error: 'Ingresa tu nombre'),
        lastname = lastname ?? BlocFormItem(error: 'Ingresa tu apellido'),
        email = email ?? BlocFormItem(error: 'Ingresa el email'),
        phone = phone ?? BlocFormItem(error: 'Ingresa tu número de teléfono'),
        password = password ?? BlocFormItem(error: 'Ingresa la contraseña'),
        confirmPassword = confirmPassword ?? BlocFormItem(error: 'Confirma la contraseña');
       
  

  RegisterStateBloc copyWith({
    BlocFormItem? name,
    BlocFormItem? lastname,
    BlocFormItem? email,
    BlocFormItem? phone,
    BlocFormItem? password,
    BlocFormItem? confirmPassword,
    GlobalKey<FormState>? formKey,
  }) {
    return RegisterStateBloc(
      name: name ?? this.name,
      lastname: lastname ?? this.lastname,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      formKey: formKey ,
    );
  }

  @override
  List<Object?> get props => [name, lastname, email, phone, password, confirmPassword];

  

}