import 'package:flutter/material.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 117, 218, 120),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left:10),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,  
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: Text('Login', style: TextStyle(
                   fontSize: 28,
                   color: Colors.white, 
                   fontWeight: FontWeight.bold
                ),)),
              SizedBox(height: 50),
              RotatedBox(
                quarterTurns: 1,
                child: Text('Register', style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
                ),)),
                 SizedBox(height: 100),
            ],
          ),
          
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.93,
          margin: const EdgeInsets.only(left: 50),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), bottomLeft: Radius.circular(35)),
            color: Color.fromARGB(255, 38, 112, 41),
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text(
                  'WELCOIME',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'BACK...',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
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
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: ' ',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: ' ',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      'SING IN',
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
