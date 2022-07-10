import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:foodly_app/utils/utils.dart';

class DefaultDialog extends StatelessWidget {
  String title;
  String subTitle;
  bool isTrue;
  DefaultDialog({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.isTrue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
            color: isTrue ? Colors.green : Colors.red
        ),
      ),
      content: Text(
        subTitle,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Đóng",
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w700
                ),
              ),
            ))
      ],
    );
  }
}
