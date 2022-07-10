import 'package:flutter/material.dart';
import 'package:foodly_app/utils/utils.dart';


class DefaultButton extends StatefulWidget {
  String text;
  Function function;
  DefaultButton({ 
    required this.text,
    required this.function,
  });

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLoading ? () {

        } : (){
          setState(() {
            isLoading = !isLoading;
          });
          widget.function();
          setState(() {
            isLoading = !isLoading;
          });
        }, 
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: isLoading 
            ? const SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(
                  color: textColor,
                  strokeWidth: 3,
                ),
            ) 
            : Text(
                widget.text,
                style: const TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
        ),
      ),
    );
  }
}