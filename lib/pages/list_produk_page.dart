import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarfluuter/controller/list_produk_controller.dart';
import 'package:belajarfluuter/Routes.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});
  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Skintific Products",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 234, 235, 236),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 138, 174, 206),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: RefreshIndicator(
          onRefresh: controller.refreshProduk,
          child: Obx(
            () => ListView.builder( physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              itemCount: controller.listProduk.length,
              itemBuilder: (context, index) {
                final produk = controller.listProduk[index];

                return Dismissible(
                  key: ValueKey(produk.namaProduk),
                  direction: DismissDirection.startToEnd,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    controller.hapusProduk(produk);
                  },
                  child: Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                child: InkWell(
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
                      onLongPress: () {
                        Get.bottomSheet(
                          Container(
                            padding: const EdgeInsets.all(16),
                            color: Colors.white,
                            child: Wrap(
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.info, color: Colors.blue),
                                  title: const Text('Lihat Detail'),
                                  onTap: () {
                                    Get.back(); // Tutup bottom sheet
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
                                ),
                                ListTile(
                                  leading: const Icon(Icons.delete, color: Colors.red),
                                  title: const Text('Hapus Produk'),
                                  onTap: () {
                                    Get.back(); // Tutup bottom sheet
                                    controller.hapusProduk(produk);
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(10),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            produk.image,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.storefront,
                                size: 60,
                                color: Colors.grey,
                              );
                            },
                          ),
                        ),
                        title: Text(
                          produk.namaProduk,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          produk.harga,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 138, 174, 206),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Color.fromARGB(255, 138, 174, 206),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}