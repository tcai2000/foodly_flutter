
import 'package:flutter/material.dart';
import 'package:foodly_app/utils/utils.dart';

class AppBarWidget extends StatelessWidget {
  String location;
  AppBarWidget({
    Key? key,
    required this.location
  }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        leading: const Icon(
            Icons.menu_open_rounded,
            color: blackColor,
        ),
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.1),
          ),
          child: Row(
            children: [
              const SizedBox(width: 20,),
              Expanded(
                child: Text(
                  location,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: blackColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: blackColor,
              ),
              const SizedBox(width: 20,),
    
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            padding: const EdgeInsets.symmetric(horizontal: 20),
            constraints: const BoxConstraints(),
            icon: Stack(
              children: [
                const Icon(
                  Icons.notifications_none_outlined,
                  color: blackColor,
                ),
                Positioned(
                  top: 4,
                  right: 4,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                )
              ],
            )
          )
        ],
      );
  }
}
