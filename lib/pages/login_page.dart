import  'package:flutter/material.dart';

import '../components/button.dart';
import '../components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage ({super.key});

  @override
State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  @override
Widget build(BuildContext context){
    return Scaffold(
    backgroundColor: Colors.grey[300],
    body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              //welcomeback msg

              const SizedBox(height: 50),
              const Text(
                "Welcome back, you've been missed!"
              ),

              const SizedBox(height: 25),
              //email textfield
              MyTextField(
                  controller: emailTextController,
                  hintText: 'Email',
                  obscureText: false,),

              const SizedBox(height: 10),

              //password textfield
              MyTextField(
                controller: passwordTextController,
                hintText: 'Password',
                obscureText: true,
              ),

              //signin button

              MyButton(
                  onTap: () {},
                  text: 'Sign In',
              ),

              //go to register page
            ],
          ),
        ),
      ),
    ),
    );
  }
}
