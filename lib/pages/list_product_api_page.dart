import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarfluuter/controller/product_api_controller.dart';

class ListProductApiView extends StatelessWidget {
  ListProductApiView({super.key});

  final controller = Get.put(ProductApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Produk API"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: RefreshIndicator(
          onRefresh: () async {
          controller.getProduct();
          await Future.delayed(const Duration(seconds: 1));
          },
          child: Obx(() {
            if (controller.isLoading.value &&
                controller.produkModel.value == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final listProduk =
                controller.produkModel.value?.products ?? [];

            if (listProduk.isEmpty) {
              return ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: const [
                  SizedBox(height: 200),
                  Center(
                    child: Text("Data produk tidak tersedia"),
                  ),
                ],
              );
            }

            return ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              itemCount: listProduk.length,
              itemBuilder: (context, index) {
                final produk = listProduk[index];

                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    leading: Image.network(
                      produk.thumbnail,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.image_not_supported);
                      },
                    ),
                    title: Text(produk.title),
                    subtitle: Text("\$${produk.price}"),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}