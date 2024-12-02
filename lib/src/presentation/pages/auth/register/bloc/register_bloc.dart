import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone/src/presentation/pages/auth/register/bloc/register_event.dart';
import 'package:indriver_clone/src/presentation/pages/auth/register/bloc/register_state_bloc.dart';
import 'package:indriver_clone/src/presentation/utils/bloc_form_item.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterStateBloc> {
  final formkey = GlobalKey<FormState>();

  RegisterBloc() : super(RegisterStateBloc()) {
    on<RegisterInitEvent>((event, emit) {
      emit(state.copyWith(formKey: formkey));
    });

    on<NameChanged>((event, emit) {
      emit(state.copyWith(
          name: BlocFormItem(
            value: event.name.value,
            error: event.name.value.isEmpty ? 'Ingresa tu nombre' : null,
      ), 
        formKey: formkey
      ));
    });

    on<LastNameChanged>((event, emit) {
      emit(state.copyWith(
          lastname: BlocFormItem(
        value: event.lastname.value,                                                                          
        error: event.lastname.value.isEmpty ? 'Ingresa tu apellido' : null,
      ),  formKey: formkey));
    });

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
          email: BlocFormItem(
        value: event.email.value,
        error: event.email.value.isEmpty ? 'Ingresa el email' : null,
      ), formKey: formkey));
    });

    on<PhoneChanged>((event, emit) {
      emit(state.copyWith(
          phone: BlocFormItem(
        value: event.phone.value,
        error:
            event.phone.value.isEmpty ? 'Ingresa tu número de teléfono' : null,
      ),  formKey: formkey));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
          password: BlocFormItem(
        value: event.password.value,
        error: event.password.value.isEmpty ? 'Ingresa la contraseña' : null,
      ),  formKey: formkey));
    });

    on<ConfirmPasswordChanged>((event, emit) {
      emit(state.copyWith(
          confirmPassword: BlocFormItem(
        value: event.confirmPassword.value,
        error: event.confirmPassword.value.isEmpty
            ? 'Confirma la contraseña'
            : event.confirmPassword.value != state.password.value
                ? 'Las contraseñas no coinciden'
                : null,
      ),  formKey: formkey,));
    });

    on<FormSubmitted>((event, emit) {
        print("Name: ${state.name.value}");
        print("LastName: ${state.lastname.value}");
        print("Email: ${state.email.value}");
        print("Phone: ${state.phone.value}");
        print("Password: ${state.password.value}");
        print("ConfirmPassword: ${state.confirmPassword.value}");
    }); 

    on<ResetForm>((event, emit) {
      state.formKey?.currentState?.reset();
    });
  }
}
