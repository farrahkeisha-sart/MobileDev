import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarfluuter/controller/detail_controller.dart';

class DetailProdukPage extends StatelessWidget {
 DetailProdukPage({super.key});
 final controller = Get.put(DetailController()); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Product',style: TextStyle(
      fontSize: 20,
    fontWeight: FontWeight.bold,
    color:Color.fromARGB(255, 234, 235, 236),
    ),
    ),
    centerTitle: true,
      backgroundColor:Color.fromARGB(255, 138, 174, 206)
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              controller.image,
              fit: BoxFit.cover,
            
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.storefront, size: 100, color: Colors.grey);
              },
              ),
            ),
          
          const SizedBox(height: 16),
 
          
          Text(
            controller.namaProduk,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
 
          
          Text(
           controller.harga,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          const SizedBox(height: 12),
    
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 20),
              const SizedBox(width: 4),
              Text(controller.rating),
              const Spacer(),
              const Icon(Icons.storefront, size: 18),
              const SizedBox(width: 4),
              Text(controller.namaToko),
            ],
          ),
          const Divider(height: 32),

          const Text('Deskripsi',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(controller.deskripsi),
          const Divider(height: 32),
 
          
          const Text('Reviews',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(controller.reviews),
        ],
      ),
    );
  }
}