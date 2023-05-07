import 'package:flutter/material.dart';
import 'package:flutter_login/components/my_button.dart';
import 'package:flutter_login/components/my_textfield.dart';
import 'package:flutter_login/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text Editing Controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Custom Functions
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              const Icon(
                Icons.lock,
                size: 120,
              ),

              const SizedBox(
                height: 50,
              ),
              // Welcome Back, Missed You UWU
              Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(
                height: 25,
              ),

              // Username Textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(
                height: 25,
              ),

              // Password Textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 15,
              ),
              // Forgot Password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Pasword?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              // Sign In Button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(
                height: 25,
              ),
              // Or Continue With
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              // Google + Apple Sign In Buttons

              const SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTile(imagePath: 'lib/images/google.png'),
                  SizedBox(
                    width: 30,
                  ),
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),

              const SizedBox(
                height: 50,
              ),

              // Not a member ? Register Now

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Register Now',
                    style: TextStyle(color: Colors.blueAccent),
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
