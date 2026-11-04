import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarfluuter/controller/list_produk_controller.dart';
import 'package:belajarfluuter/Routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 138, 174, 206),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Daftar Produk",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            SizedBox(
              height: 200,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.listProduk.length,
                  itemBuilder: (context, index) {
                    final produk = controller.listProduk[index];

                    return Container(
                      width: 140,
                      margin: const EdgeInsets.only(right: 12, bottom: 8),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            Get.toNamed(
                              Routes.detailProduk,
                              arguments: {
                                'nama': produk.namaProduk,
                                'harga': produk.harga,
                                'image': produk.image,
                                'deskripsi': produk.deskripsi,
                                'reviews': produk.reviews,
                                'rating': produk.rating,
                                'namaToko': produk.namaToko,
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ClipRRect(borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    produk.image,
                                    height: 90,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Icon(Icons.storefront, size: 70, color: Colors.grey);
                                    },
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  produk.namaProduk,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  produk.harga,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 138, 174, 206),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}