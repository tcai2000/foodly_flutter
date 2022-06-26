import 'package:flutter/material.dart';
import 'package:foodly_app/utils/color_constants.dart';

class InputPassField extends StatefulWidget {
  TextEditingController textEditingController;
  TextInputType textInputType;
  Function? validateInput;
  InputPassField({
    Key? key, 
    this.validateInput,
    required this.textEditingController,
    required this.textInputType
  }) : super(key: key);

  @override
  State<InputPassField> createState() => _InputPassFieldState();
}

class _InputPassFieldState extends State<InputPassField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      obscureText: isVisible,
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
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          child: Icon(
            isVisible ? Icons.visibility_off : Icons.visibility,
            color: textColor.withOpacity(0.5),
            size: 18,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor
          )
        ),
      ),
    );

  }
}