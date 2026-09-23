
import 'package:belajarfluuter/component/My_texfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarfluuter/controller/kalkulator_controller.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    const Color warnaTeks = Color.fromARGB(255, 73, 9, 9);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kalkulator Page",
          style: TextStyle(
            fontSize: 20,
            color: warnaTeks,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
           MyTextField(
              myhint: "Input angka pertama",
              textController: txtangka1,
              radius: 10,
            ),

            const SizedBox(height: 12),

            MyTextField(
              myhint: "Input angka kedua",
              textController: txtangka2,
              radius: 10,
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,//untuk meratakan button jadi rata tengah
              children: [
                // TAMBAH
                ElevatedButton(
                  onPressed: () {
                    controller.tambah(
                      txtangka1.text,txtangka2.text
                    );
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 73, 9, 9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // KURANG
                ElevatedButton(
                  onPressed: () {
                    controller.kurang(
                      txtangka1.text,txtangka2.text
                    );
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(
                      fontSize: 20,
                      color: warnaTeks,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // KALI
                ElevatedButton(
                  onPressed: () {
                    controller.kali(
                      txtangka1.text,txtangka2.text,
                    );
                  },
                  child: const Text(
                    "*",
                    style: TextStyle(
                      fontSize: 20,
                      color: warnaTeks,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // BAGI
                ElevatedButton(
                  onPressed: () {
                    controller.bagi(
                      txtangka1.text,txtangka2.text
                    );
                  },
                  child: const Text(
                    "/",
                    style: TextStyle(
                      fontSize: 20,
                      color: warnaTeks,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // HASIL
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Hasil:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Obx(
                    () => Text(
                      controller.hasilHitung.toString(),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 106, 70, 11),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // RESET
            ElevatedButton(
              onPressed: () {
                txtangka1.clear();
                txtangka2.clear();
                controller.hasilHitung.value = 0.0;
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                  fontSize: 18,
                  color: warnaTeks,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

