import 'package:flutter/material.dart';

class CNavbar extends StatelessWidget {
    final IconData leftIcon;
    final IconData rightIcon;
    final Function? leftCallback;
    const CNavbar(
        this.leftIcon,
        this.rightIcon,
        {this.leftCallback}
      );
  @override
  Widget build(BuildContext context) {

    
    return Container(
      // seeting the background color of the navbar
      color: Color.fromARGB(255, 222, 151, 37),
      padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallback != null ? () => leftCallback! () : null,
            child: Container(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8), 
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Icon(leftIcon),
          )
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),child: Icon(rightIcon),
          )
          
      ],),
    );
  }
}
