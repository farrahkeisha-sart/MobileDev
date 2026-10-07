import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarfluuter/controller/list_produk_controller.dart';
import 'package:belajarfluuter/pages/detail_produk_page.dart';
import 'package:belajarfluuter/Routes.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});
  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skintific Products",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 234, 235, 236),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 138, 174, 206),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),// jarak dari tepi layar
        itemCount: controller.listProduk.length,// jumlah item sesuai list produk
        itemBuilder: (context, index) {
          final produk = controller.listProduk[index];// ambil data produk dari controller
          return Card(
            margin: const EdgeInsets.only(bottom: 10),// jarak antar card
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip.antiAlias,// biar gambar ikut rounded
            child: InkWell(
              onTap: () {
                // ppndah ke detail page sambil bawa data produk
                Get.toNamed(Routes.detailProduk, arguments: {
                  'nama': produk.namaProduk,
                  'harga': produk.harga,
                  'image': produk.image,
                  'deskripsi': produk.deskripsi,
                  'reviews': produk.reviews,
                  'rating': produk.rating,
                  'namaToko': produk.namaToko,
                });
              },
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: ClipRRect(//gambar produk dengan rounded,rounded untuk membuat sudut gambar melengkung
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(// ambil gambar dari link
                    produk.image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.storefront, size: 60, color: Colors.grey);
                    },
                   
                  ),
                ),
                title: Text(
                  produk.namaProduk,
                  overflow: TextOverflow.ellipsis,
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
          );
        },
      ),
    );
  }
}