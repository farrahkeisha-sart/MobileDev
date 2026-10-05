import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarfluuter/controller/confrim_register_controller.dart';

class ConfrimRegisterPage extends StatelessWidget {
  const ConfrimRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfrimRegisterController());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      appBar: AppBar(
        title: const Text(
          "Confirm Register",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFF6D4C41),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // DATA PENGGUNA
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 16,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama: ${controller.nama}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4E342E),
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "Email: ${controller.email}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4E342E),
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "Alamat: ${controller.alamat}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4E342E),
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "Jenis Kelamin: ${controller.kelamin}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4E342E),
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "No: ${controller.no}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4E342E),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // TOMBOL
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6D4C41),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    "Oke",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}