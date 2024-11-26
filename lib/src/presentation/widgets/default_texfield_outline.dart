import 'package:flutter/material.dart';

class DefaultTexfieldOutline extends StatelessWidget {
  final String label;
  final IconData icon;

  const DefaultTexfieldOutline({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 45,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(134, 144, 233, 0.4),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 12.0),
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            Icon(icon,
                                color: Color.fromARGB(255, 233, 236, 238)),
                            Container(
                              height: 20,
                              width: 1,
                              color: Colors.black26,
                            )
                          ],
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 39, 139, 185),
                          width: 1.0,
                        ),
                      ),
                      hintText: 'Ingrese aquí su valor',
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Color.fromARGB(255, 235, 231, 231),
                        textBaseline: TextBaseline.ideographic,
                      )),
                ),
              ),
            ),
          ],
        ));
  }
}
