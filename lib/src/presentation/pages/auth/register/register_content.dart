import 'package:flutter/material.dart';
import 'package:indriver_clone/src/presentation/widgets/default_texfield_outline.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

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
                            DefaultTexfieldOutline(
                          label: 'Nombre',
                          icon: Icons.person_2_outlined,
                          onChanged:  (value) {
                            print(value);
                          },
                        ),
                         DefaultTexfieldOutline(
                          label: 'Apellido',
                          icon: Icons.person_2_outlined,
                            onChanged:  (value) {
                            print(value);
                          }
                        ),
                         DefaultTexfieldOutline(
                          label: 'Email',
                          icon: Icons.email_outlined,
                            onChanged:  (value) {
                            print(value);
                          }
                        ),
                         DefaultTexfieldOutline(
                          label: 'Telefono',
                          icon: Icons.phone,
                            onChanged:  (value) {
                            print(value);
                          }
                        ),
                         DefaultTexfieldOutline(
                          label: 'Contraseña',
                          icon: Icons.lock,
                            onChanged:  (value) {
                            
                          }
                        ),
                         DefaultTexfieldOutline(
                          label: 'Confirmar Contraseña',
                          icon: Icons.lock,
                            onChanged:  (value) {
                            print(value);
                          }
                        ),
                        const SizedBox(height: 30),
                        Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(
                              bottom: 20, left: 15, right: 15),
                          child: ElevatedButton(
                            onPressed: () {},
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
                        _separetorOr(),
                        _textAlreadyHaveAccount(context),
                        ],
                      )
                    ],
                  
                  ),
                ),
              ),
            ],
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

  Widget _separetorOr(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 1,
          color: Color.fromARGB(255, 253, 251, 251),
        ),
        const SizedBox(width: 5),
        const Text('OR',
            style: TextStyle(
              color: Color.fromARGB(255, 253, 251, 251),
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

  Widget _textAlreadyHaveAccount(BuildContext context){ 
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

  Widget _imageBackgroud(BuildContext context){ 
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 50),
      child: Image.asset('assets/img/destination.png', 
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.4,
        opacity: const AlwaysStoppedAnimation(0.3),

      ),
    );
  }
}