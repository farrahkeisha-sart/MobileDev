import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  //list variabel yang akan digunakan untuk menampung data input dari user
  final String myhint; //untuk di isikan ketika di panggil
  final TextEditingController textController;
  final double radius;

  const MyTextField({super.key, required this.myhint, required this.textController, required this.radius});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
       //untuk menampilkan keyboard angka
      decoration: InputDecoration(
        hint: Text(myhint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}