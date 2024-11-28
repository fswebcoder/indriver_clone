import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone/src/presentation/pages/auth/login/bloc/login_event.dart';
import 'package:indriver_clone/src/presentation/pages/auth/login/bloc/login_state_bloc.dart';
import 'package:indriver_clone/src/presentation/utils/bloc_form_item.dart';

class LoginBloc extends Bloc<LoginEvent, LoginStateBloc> {
  final formKey = GlobalKey<FormState>();

  LoginBloc() : super(LoginStateBloc()) {
    on<LoginInitEvent>((event, emit) {
      emit(state.copyWith(formKey: formKey));
    });

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
          email: BlocFormItem(
              value: event.email.value,
              error: event.email.value.isEmpty ? 'Ingresa el email' : null),
          formKey: formKey));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
          password: BlocFormItem(
              value: event.password.value,
              error: event.password.value.isEmpty
                  ? 'Ingresa el password'
                  : event.password.value.length < 6
                      ? 'Se requieren minimo 6 caracteres'
                      : null),
          formKey: formKey));
    });

    on<FormSubmitted>((event, emit) {
      print("email: ${state.email}");
      print("password: ${state.password}");
    });
  }
}
