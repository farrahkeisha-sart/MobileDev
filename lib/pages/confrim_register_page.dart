import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:belajarfluuter/controller/confrim_register_controller.dart';

class ConfrimRegisterPage extends StatelessWidget {
  const ConfrimRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfrimRegisterController());

    return Scaffold(
      appBar: AppBar(title: Text("Confrim Register",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF6D4C41),
      ),
      body: Column(
        children: [
          Text("Nama: "+controller.nama.toString(),
          style: TextStyle(fontSize: 14, color:const Color(0xFF4E342E),
          ),
          ),

          Text("Email: "+controller.email.toString(),
          style: TextStyle(fontSize: 14, color: const Color(0xFF4E342E),
          ),
          ),
          Text("Alamat: "+controller.alamat.toString(),
          style: TextStyle(fontSize: 14, color: const Color(0xFF4E342E),
          ),
          ),
          Text("jenis Kelamin: "+controller.kelamin.toString(),
          style: TextStyle(fontSize: 14, color:const Color(0xFF4E342E),
          ),),
          
          Text("No: "+controller.no.toString(),
          style: TextStyle(fontSize: 14, color: const Color(0xFF4E342E),
          ),),

          ElevatedButton(onPressed: (){
            Get.back();
          },
          child: Text("oke"),
          ),
        ],
      ),
    );
  }
}