import 'package:flutter/material.dart';

class DefaultTexfield extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function(String text)? onChanged;
  final String? Function(String?)? validator;

  const DefaultTexfield({
    super.key,
    required this.label,
    required this.icon,
    required this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 2.0),
            Container(
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  validator: validator,
                  onChanged: onChanged,
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 12.0),
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            Icon(icon, color: Colors.grey),
                            Container(
                              height: 20,
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
