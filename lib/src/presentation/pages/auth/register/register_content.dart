import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone/src/presentation/pages/auth/register/bloc/register_bloc.dart';
import 'package:indriver_clone/src/presentation/pages/auth/register/bloc/register_event.dart';
import 'package:indriver_clone/src/presentation/pages/auth/register/bloc/register_state_bloc.dart';
import 'package:indriver_clone/src/presentation/utils/bloc_form_item.dart';

import '../../../widgets/default_texfield.dart';

class RegisterContent extends StatelessWidget {

  RegisterStateBloc? state;

  RegisterContent(this.state);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 12),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 12, 38, 145),
                Color.fromARGB(255, 34, 156, 249)
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _texLogintRotate(),
              const SizedBox(height: 100),
              _texRegistertRotate(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.20),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 60, bottom: 35),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 14, 29, 166),
                Color.fromARGB(255, 30, 112, 227)
              ],
            ),
          ),
          child: Form(
            key: state?.formKey,
            child: Column(
              children: [
                _imageBanner(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        _imageBackgroud(context),
                      Column(
                            children: [
                              DefaultTexfield(
                                label: 'Nombre',
                                icon: Icons.lock_outline_rounded,
                                onChanged: (text) {
                                  context.read<RegisterBloc>().add(NameChanged(
                                      name: BlocFormItem(value: text)));
                                },
                                validator: (value) {
                                  return state?.name.error ;
                                },
                              ),
                              DefaultTexfield(
                                label: 'Apellido',
                                icon: Icons.lock_outline_rounded,
                                onChanged: (text) {
                                  context.read<RegisterBloc>().add(
                                      LastNameChanged(
                                          lastname: BlocFormItem(value: text)));
                                },
                                validator: (value) {
                                  return state?.lastname.error;
                                },
                              ),
                              DefaultTexfield(
                                label: 'Email',
                                icon: Icons.email_outlined,
                                onChanged: (text) {
                                  context.read<RegisterBloc>().add(EmailChanged(
                                      email: BlocFormItem(value: text)));
                                },
                                validator: (value) {
                                  return state?.email.error;
                                },
                              ),
            
                              DefaultTexfield(
                                label: 'Teléfono',
                                icon: Icons.phone,
                                onChanged: (text) {
                                  context.read<RegisterBloc>().add(PhoneChanged(
                                      phone: BlocFormItem(value: text)));
                                },
                                validator: (value) {
                                  return state?.phone.error ;
                                },
                              ),
            
                              DefaultTexfield(
                                label: 'Contraseña',
                                icon: Icons.lock_outline_rounded,
                                onChanged: (text) {
                                  context.read<RegisterBloc>().add(PasswordChanged(
                                      password: BlocFormItem(value: text)));
                                },
                                validator: (value) {
                                  return state?.password.error ;
                                },
                              ),
            
                              DefaultTexfield(
                                label: 'Confirmar contraseña',
                                icon: Icons.lock_outline_rounded,
                                onChanged: (text) {
                                  context.read<RegisterBloc>().add(
                                      ConfirmPasswordChanged(
                                          confirmPassword: BlocFormItem(value: text)));
                                },
                                validator: (value) {
                                  return state?.confirmPassword.error ;
                                },
                              ),
            
                              const SizedBox(height: 30),
                              Container(
                                height: 35,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    bottom: 20, left: 15, right: 15),
                                child: ElevatedButton(
                                  onPressed: () {
                                  if (state!.formKey!.currentState!.validate()) {
                                    context
                                        .read<RegisterBloc>()
                                        .add(FormSubmitted());
                                  }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),                 
                                  child: const Text(
                                    'REGISTER',
                                    style: TextStyle(
                                      color: Colors.black26,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              _separetorOr(),
                              _textAlreadyHaveAccount(context),
                            ],
                          ),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _texLogintRotate() {
    return const RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Login',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }

  Widget _texRegistertRotate() {
    return const RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Register',
        style: TextStyle(
            fontSize: 27, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _imageBanner() {
    return Container(
      margin: const EdgeInsets.only(top: 45),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/img/car_white.png',
        height: 150,
        width: 150,
      ),
    );
  }

  Widget _separetorOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          color: const Color.fromARGB(255, 253, 251, 251),
        ),
        const SizedBox(width: 5),
        const Text('OR',
            style: TextStyle(
              color: const Color.fromARGB(255, 253, 251, 251),
              fontSize: 15,
            )),
        const SizedBox(width: 5),
        Container(
          width: 20,
          height: 1,
          color: Color.fromARGB(255, 253, 251, 251),
        )
      ],
    );
  }

  Widget _textAlreadyHaveAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'I already have an account?',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 254, 254),
            fontSize: 15,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'login');
          },
          child: const Text(
            'Login',
            style: TextStyle(
              color: Color.fromARGB(255, 17, 17, 17),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _imageBackgroud(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 50),
      child: Image.asset(
        'assets/img/destination.png',
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.4,
        opacity: const AlwaysStoppedAnimation(0.3),
      ),
    );
  }
}
