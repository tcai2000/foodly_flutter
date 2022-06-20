import 'package:flutter/material.dart';
import 'package:foodly_app/components/default_button.dart';
import 'package:foodly_app/components/input_pass_field.dart';
import 'package:foodly_app/components/input_text_field.dart';
import 'package:foodly_app/components/logo.dart';
import 'package:foodly_app/screens/login_screen.dart';
import 'package:foodly_app/utils/color_constants.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({ Key? key }) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
  
}

class _SignupScreenState extends State<SignupScreen> {
  final _formLoginKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
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
                      "First Name",
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),
                    ),
                    InputTextField(
                      textEditingController: _firstNameController,
                      textInputType: TextInputType.text
                    ),
                    const SizedBox(height: 8,),
                    const Text(
                      "Last Name",
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),
                    ),
                    InputTextField(
                      textEditingController: _lastNameController,
                      textInputType: TextInputType.text
                    ),
                    const SizedBox(height: 8,),
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
                    const SizedBox(
                      height: 24,
                    ),   
                    DefaultButton(
                      function: () {
                        print('Đăng ký tài khoản');
                      },
                      text: 'SIGN UP',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account",
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
                                builder: ((context) => LoginScreen()
                              )));
                            },
                            child: const Text(
                              "LOG IN",
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

