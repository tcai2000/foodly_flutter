import 'package:flutter/material.dart';

import '../utils/color_constants.dart';

class InputTextField extends StatefulWidget {
  TextEditingController textEditingController;
  TextInputType textInputType;
  InputTextField({ 
    required this.textEditingController,
    required this.textInputType
   });

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      cursorColor: primaryColor,
      maxLines: 1,
      minLines: 1,
      validator: (value) => null,
      style: const TextStyle(
        fontSize: 16,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
      ),
      keyboardType: widget.textInputType,
      decoration: const InputDecoration(
        // suffixIcon: Icon(
        //   Icons.check,
        //   color: primaryColor,
        // ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor
          )
        ),
      ),
    );
      
    
  }
}