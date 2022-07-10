import 'package:flutter/material.dart';
import 'package:foodly_app/utils/utils.dart';
class TypeFoodCard extends StatelessWidget {
  String nameFood;
  TypeFoodCard({
    Key? key,
    required this.nameFood,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 1,
                color: textColor
              )
            ),
            child: const Icon(
              Icons.local_pizza_outlined,
              size: 30,
              color: blackColor,
            ),
          ),
          const SizedBox(height: 4,),
          const Text(
            "Pizza",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              overflow: TextOverflow.ellipsis
            ),
          )
        ],
      ),
    );
  }
}
