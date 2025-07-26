import 'package:flutter/material.dart';
import 'package:flutter_application_1/compoment/my_button.dart';
import 'package:flutter_application_1/compoment/my_textfield.dart';
import 'package:flutter_application_1/pages/login_page.dart';

class ForgetPassword extends StatelessWidget{
  ForgetPassword({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final phonenumController = TextEditingController();

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
      
            //username textfield
            MyTextfield(
              contreller: usernameController,
              hintText: 'نام کاربری',
              obscureText: false,
            ),

            const SizedBox(height: 10,),

            //phone number textfield
            MyTextfield(
              contreller: phonenumController,
              hintText: 'شماره تلفن همراه',
              obscureText: false,
            ),

            const SizedBox(height: 10,),                    
          
            //password textfield
            MyTextfield(
              contreller: passwordController,
              hintText: 'رمز عبور جدید',
              obscureText: true,
            ),

            const SizedBox(height: 10,),

            //password textfield
            MyTextfield(
              contreller: passwordController,
              hintText: 'تکرار رمز عبور جدید',
              obscureText: true,
            ),

            const SizedBox(height: 30,),
          
            //sign up button 
            MyButton(
              text: 'بازیابی رمز عبور',
              onTap: () {
              },
            ),

            const SizedBox(height: 100,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    'ورود به حساب کاربری',
                    style: TextStyle(
                      color: Color.fromARGB(255, 110, 31, 25),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
          ),
        ),
      ),
    );
  }
}