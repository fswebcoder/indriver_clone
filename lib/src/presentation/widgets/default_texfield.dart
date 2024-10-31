import 'package:flutter/material.dart';

class DefaultTexfield extends StatelessWidget {
  final String label;
  final IconData icon;

  const DefaultTexfield({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 8.0),
            Container(
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 13.0),
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            Icon(icon, color: Colors.grey),
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.black26,
                            )
                          ],
                        ),
                      ),
                      border: InputBorder.none,
                      hintText: 'Ingrese aquí su valor',
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        textBaseline: TextBaseline.ideographic,
                      )),
                ),
              ),
            ),
          ],
        ));
  }
}
