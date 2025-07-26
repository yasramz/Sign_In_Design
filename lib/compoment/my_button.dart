import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final Function()? onTap;
  final String text;

  const MyButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 10, 64, 158),
          borderRadius: BorderRadius.circular(15.0),
          ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            ),
          ),
      ),
    ); 
  }
}
