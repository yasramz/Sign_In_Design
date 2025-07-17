import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget{
  final contreller;
  final String hintText;
  final bool obscureText;

  const MyTextfield({
    super.key,
    required this.contreller,
    required this.hintText,
    required this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: contreller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 10, 64, 158)),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Color.fromARGB(255, 36, 94, 194))
                ),
              ),
            );
  }
}
