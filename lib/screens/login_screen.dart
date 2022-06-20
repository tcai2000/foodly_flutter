import 'package:flutter/material.dart';
import 'package:foodly_app/components/default_button.dart';
import 'package:foodly_app/components/input_pass_field.dart';
import 'package:foodly_app/components/input_text_field.dart';
import 'package:foodly_app/components/logo.dart';
import 'package:foodly_app/screens/signup_screen.dart';
import 'package:foodly_app/utils/color_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
  
}

class _LoginScreenState extends State<LoginScreen> {
  final _formLoginKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Logo(fontSize: 30,),
              const Spacer(flex: 1),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Form(
                  key: _formLoginKey,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),
                    ),
                    InputTextField(
                      textEditingController: _emailController,
                      textInputType: TextInputType.emailAddress
                    ),
                    const SizedBox(height: 8,),
                    const Text(
                      "Password",
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),
                    ),
                    const SizedBox(height: 8,), 
                    InputPassField(
                      textEditingController: _passController,
                      textInputType: TextInputType.text
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      child: const Text(
                        "Forgot password?",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),   
                    DefaultButton(
                      function: () {
                        print('Hello');
                      },
                      text: 'LOG IN',
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          const SizedBox(width: 4,),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                builder: ((context) => SignupScreen()
                              )));
                            },
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(
                                fontWeight: FontWeight.w900
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}

