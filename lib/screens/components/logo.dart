import 'package:flutter/material.dart';
import 'package:foodly_app/utils/utils.dart';

class Logo extends StatelessWidget {
  double fontSize;
  Logo({
    Key? key,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w900,
          color: Theme.of(context).primaryColor,
          fontFamily: 'Cera Roun',  
          letterSpacing: 1.2
        ),
        children: const <TextSpan>[
          TextSpan(
            text: 'Food',
            style: TextStyle(
              color: textColor,
            )
          ),
          TextSpan(
            text: 'ly',
          )
        ]
      ),
    );
  }
}