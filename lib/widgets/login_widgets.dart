import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


// TextField Form for Login/Signup

class MyTextField extends StatelessWidget {

  // Required parameters for TextField
  final TextEditingController? controller;
  final bool obscureText;
  final String hintText;
  final String? errorText;
  final Color? errorTextColor;

  const MyTextField({
    Key? key,
    this.controller,
    
    required this.obscureText,
    required this.hintText,
    this.errorText,
    this.errorTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        
        color: const Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: TextFormField(
          
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            errorStyle: TextStyle(
            color: errorTextColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0x7F455A64),
              fontWeight: FontWeight.normal,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            focusedErrorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
          ),
          style: const TextStyle(
            color: Color(0xFF455A64),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
  
}

// Social Butons for Login/Signup

class GoogleLoginButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;

  // Required parameters for GoogleLoginButton

  GoogleLoginButton({
    required this.icon,
    required this.iconSize,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFEEEEEE),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: IconButton(
          icon: FaIcon(
            icon,
            color: const Color(0xFF0D0B01),
            size: iconSize,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}


