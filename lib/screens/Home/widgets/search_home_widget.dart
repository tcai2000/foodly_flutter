import 'package:flutter/material.dart';
import 'package:foodly_app/utils/utils.dart';


class SearchHomeWidget extends StatelessWidget {
  const SearchHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: btnGrey,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFE1DEDE),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 1),
          )
        ]
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 24,
            color: Colors.grey[500],
          ),
          const SizedBox(width: 10,),
          const Expanded(
            child: TextField(
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                hintText: 'Search food or restaurant',
                hintStyle: TextStyle(
                  color: textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                )
              ),
            )
          ),
          GestureDetector(
            onTap: () {
              print("Search");
            },
            child: const Icon(
              Icons.filter_list,
              size: 24,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}