import 'package:flutter/material.dart';
import 'package:flutter_application_1/compoment/my_button.dart';
import 'package:flutter_application_1/compoment/my_textfield.dart';

class LoginPage extends StatelessWidget{
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            const SizedBox(height: 35,),
            //logo
            const Icon(
              Icons.lock,
              size:100,
              color: Color.fromARGB(255, 10, 64, 158),
            ),

            const SizedBox(height: 50,),
          
            //welcome back, you've been missed
            Text(
              '!خوش آمدید',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25,),
          
            //username textfield
            MyTextfield(
              contreller: usernameController,
              hintText: 'نام کاربری',
              obscureText: false,
            ),
            const SizedBox(height: 10,),                  
          
            //password textfield
            MyTextfield(
              contreller: passwordController,
              hintText: 'رمز عبور',
              obscureText: true,
            ),
            const SizedBox(height: 10,),
          
            //forgot password?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'فراموشی رمز عبور',
                    style: TextStyle(color: Colors.grey[600]),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
          
            //sign in button 
            MyButton(
              onTap: signUserIn,
            ),

            const SizedBox(height: 100,),
          
            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ثبت نام',
                  style: TextStyle(color: const Color.fromARGB(255, 110, 31, 25),
                  fontWeight: FontWeight.bold),  
                ),
                const SizedBox(width: 5,),
                Text(
                  'عضو نیستید؟',
                  style: TextStyle(color: Colors.grey[600]),),
              ],
            )

          ],
          ),
        ),
      ),
    );
  }
}