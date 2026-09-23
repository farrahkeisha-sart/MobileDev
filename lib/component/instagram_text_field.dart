import 'package:flutter/material.dart';

class InstagramTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  const InstagramTextField({
    super.key,
    required this.hintText,//untuk menampilkan hint text pada textfield
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF9AA0A6),
          fontSize: 18,
        ),
        filled: true,
        fillColor: const Color(0xFF1C1C1E),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 22,
        ),
        enabledBorder: OutlineInputBorder(//untuk membuat border pada textfield
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0xFF55565A),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0xFF77787C),
          ),
        ),
      ),
    );
  }
}