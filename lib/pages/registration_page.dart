import 'package:belajarfluuter/component/My_texfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarfluuter/Routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtemail = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtKelamin = TextEditingController();
    TextEditingController txtNo = TextEditingController();
    return Scaffold(
       backgroundColor: const Color(0xFFF5EDE3),

      appBar: AppBar(title: Text("Registration Page",
      style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF6D4C41),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        children: [
          MyTextField(myhint: "input Nama", 
          textController: txtNama, 
          radius: 20),
           const SizedBox(height: 12),

          MyTextField(myhint: "input Email", 
          textController: txtemail, 
          radius: 20),
           const SizedBox(height: 12),

          MyTextField(myhint: "input Alamat", 
          textController: txtAlamat, 
          radius: 20),
           const SizedBox(height: 12),

          MyTextField(myhint: "input Jenis Kelamin", 
          textController: txtKelamin, 
          radius: 20),
           const SizedBox(height: 12),

          MyTextField(myhint: "input No WA", 
          textController: txtNo, 
          radius: 20),
           const SizedBox(height: 12),

           
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6D4C41),
            foregroundColor: Colors.white,
            ),
            onPressed: (){
            Get.toNamed(
              Routes.confrimRegistration,
            arguments: {
              'name': txtNama.text,
              'email': txtemail.text,
              'alamat': txtAlamat.text,
              'kelamin': txtKelamin.text,
              'no' :txtNo.text,
            },);

          }, child: Text("send"))
           
        ],
      ),
      ),
    );
  }
}