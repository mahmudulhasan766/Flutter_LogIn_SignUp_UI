import 'package:flutter/material.dart';

class MyTExtField extends StatelessWidget {
   final IconData iconData;
   final String hintText;
   final bool obscureText;
   final TextEditingController controller;
  MyTExtField({
    this.hintText,
    this.iconData,
    this.obscureText,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(iconData,color: Colors.black,),
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          )
        ),

      ),
    );
  }
}
