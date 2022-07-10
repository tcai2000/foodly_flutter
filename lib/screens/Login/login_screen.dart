import 'package:flutter/material.dart';
import 'package:foodly_app/screens/Signup/signup_screen.dart';
import 'package:foodly_app/screens/components/components.dart';
import 'package:foodly_app/utils/color_constants.dart';
import 'package:foodly_app/validation/login_validation.dart';

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
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
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
                  child: SingleChildScrollView(
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
                        textInputType: TextInputType.emailAddress,
                        validateInput: (value) {
                          return LoginValidation.isEmailValid(value);
                        }
                        ,
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
                        textInputType: TextInputType.text,
                        validateInput: (value) {
                          return LoginValidation.isPassValid(value);
                        }
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
                          if(_formLoginKey.currentState!.validate()) {
                            print("OK");
                          }
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
                  ),
                )
              )
            ],
          ),
        )
      ),
    );
  }
}

