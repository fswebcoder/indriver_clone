import 'package:flutter/material.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: IntrinsicHeight(
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(height: 50),
                    RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          'Register',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        )),
                    SizedBox(height: 100),
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
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(top: 15, left: 20, right: 15),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: ' ',
                            border: InputBorder.none,
                            prefixIcon: Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Wrap(
                                alignment: WrapAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.email),
                                  Container(
                                    height: 20,
                                    width: 1,
                                    color: Colors.black26,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: ' ',
                            border: InputBorder.none,
                            prefixIcon: Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Wrap(
                                alignment: WrapAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.lock),
                                  Container(
                                    height: 20,
                                    width: 1,
                                    color: Colors.black26,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Flexible(
                        child: Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          margin:
                              const EdgeInsets.only(bottom: 20, left: 15, right: 15),
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
    );
  }
}
