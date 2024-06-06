import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
  super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 2,
              color: Theme.of(context).colorScheme.inversePrimary
              )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.tertiary
              ),
              
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary) 
            
            
            
        ),
      
      ),
    );
  }
}