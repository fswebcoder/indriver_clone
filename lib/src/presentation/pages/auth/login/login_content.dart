import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone/main.dart';
import 'package:indriver_clone/src/presentation/pages/auth/login/bloc/login_bloc.dart';
import 'package:indriver_clone/src/presentation/pages/auth/login/bloc/login_event.dart';
import 'package:indriver_clone/src/presentation/pages/auth/login/bloc/login_state_bloc.dart';
import 'package:indriver_clone/src/presentation/utils/bloc_form_item.dart';
import 'package:indriver_clone/src/presentation/widgets/default_texfield.dart';
import 'package:indriver_clone/src/presentation/widgets/text_welcome.dart';

class LoginContent extends StatelessWidget {

  final LoginStateBloc? state; 

   LoginContent(this.state);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: IntrinsicHeight(
          child: Form(
            key: state?.formKey,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 12, 38, 145),
                      Color.fromARGB(255, 34, 156, 249)
                    ],
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'register'),
                        child: const  RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      const SizedBox(height: 50),
                       GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'register'),
                         child: const RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'Register',
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            )),
                       ),
                      const  SizedBox(height: 100),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.93,
                  margin: const EdgeInsets.only(left: 50),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          bottomLeft: Radius.circular(35)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 14, 29, 166),
                          Color.fromARGB(255, 30, 112, 227)
                        ],
                      )),
                  child: Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        const TextWelcome(label: 'WELCOME',),
                        const TextWelcome(label: 'BACK...',),
                        AnimatedContainer(
                          alignment: Alignment.centerRight,
                          duration: const Duration(seconds: 2),
                          curve: Curves.easeInOut,
                          child: Image.asset(
                            'assets/img/car.png',
                            width: 150,
                            height: 150,
                          ),
                        ),
                        const Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         DefaultTexfield(
                          label: 'Email',
                            validator: (value) {
                                return state?.email.error;
                            },
                          icon: Icons.email_outlined,
                          onChanged:(text) {
                                context.read<LoginBloc>().add(EmailChanged(email: BlocFormItem(value: text)));
                          } ,

                        ),
                          DefaultTexfield(
                            validator: (value) {
                                return state?.password.error;
                            },
                          label: 'Contraseña',
                          icon: Icons.lock_outline_rounded,
                          onChanged:(text) {
                                 context.read<LoginBloc>().add(PasswordChanged(password: BlocFormItem(value: text)));
                          } ,
                        ),
                        const Spacer(),
                        Flexible(
                          child: Container(
                            height: 48,
                            width: MediaQuery.of(context).size.width,
                            margin:
                                const EdgeInsets.only(bottom: 20, left: 15, right: 15),
                            child: ElevatedButton(
                              onPressed: () {
                                 if(state!.formKey!.currentState!.validate()){
                                      context.read<LoginBloc>().add(FormSubmitted());
                                 }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              child: const Text(
                                'SING IN',
                                style: TextStyle( 
                                  color: Colors.black26,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 1,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 5),
                            const Text('OR',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                )),
                            const SizedBox(width: 5),
                            Container(
                              width: 20,
                              height: 1,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


