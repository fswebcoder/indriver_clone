import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone/src/presentation/pages/auth/login/bloc/login_event.dart';
import 'package:indriver_clone/src/presentation/pages/auth/login/bloc/login_state_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginStateBloc> {

  final formKey  =  GlobalKey<FormState>();

  LoginBloc() : super(const LoginStateBloc()){
    on<LoginInitEvent>((event, emit ) {
        emit(state.copyWith(formKey: formKey));
    });

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
 
    on<FormSubmitted> ((event, emit){
        print("email: ${state.email}");
        print("password: ${state.password}");
    });
  }

  
}