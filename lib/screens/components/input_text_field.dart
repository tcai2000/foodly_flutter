import 'package:flutter/material.dart';
import 'package:foodly_app/utils/utils.dart';


class InputTextField extends StatefulWidget {
  TextEditingController textEditingController;
  Function? validateInput;
  TextInputType textInputType;
  InputTextField({Key? key, 
    this.validateInput, 
    required this.textEditingController,
    required this.textInputType
   }) : super(key: key);

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
      validator: (value) {
        return widget.validateInput!(value);
      },
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