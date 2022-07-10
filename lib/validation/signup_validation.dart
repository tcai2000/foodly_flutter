import 'package:foodly_app/utils/utils.dart';

mixin SignUpValidation {
  static isFirstName(firstName) {
    if (firstName.isEmpty) {
      return isEmptyFirstName;
    }
    return null;
  }

  static isLastName(lastName) {
    if (lastName.isEmpty) {
      return isEmptyLastName;
    }
    return null;
  }

  static isEmailValid(email) {
    const regExpEmail = r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if(email.isNotEmpty) {
      RegExp regex = RegExp(regExpEmail);
      if(!regex.hasMatch(email)) {
        return isErrorEmail;
      }
      return null;
    }else {
      return isEmptyEmail;
    }
  }
  static isPassValid(password) {
    if(password.isEmpty) {
      return isEmptyPass;
    }
    return null;
  }
}